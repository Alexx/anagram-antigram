require('ffi/aspell')

class Anagram_Antigram
  attr_reader(:PHRASE_ONE, :PHRASE_TWO)

  def initialize(phrase1, phrase2)
    @PHRASE_ONE = phrase1
    @PHRASE_TWO = phrase2

    #Force phrase to lowercase and split up words into an array
    @PHRASE_ONE_INTACT = phrase1.downcase().split(' ')
    @PHRASE_TWO_INTACT = phrase2.downcase().split(' ')

    #Force phrase to lowercase, in alphabetical order and delete all empty spaces
    @PHRASE_ONE_ARRAY = phrase1.downcase().split('').sort().reject { |e| e == " "}
    @PHRASE_TWO_ARRAY = phrase2.downcase().split('').sort().reject { |e| e == " "}
  end

  def is_valid_phrase?
    @speller = FFI::Aspell::Speller.new('en_US')
    @PHRASE_ONE_INTACT.each do |word|
      if !@speller.correct?(word)
        @valid_phrase = false
      end
    end

    @PHRASE_TWO_INTACT.each do |word|
      if !@speller.correct?(word)
        @valid_phrase = false
      end
    end

    if @valid_phrase == false
      @speller.close
      return false
    else
      @speller.close
      return true
    end
  end

  def how_many_letters_match
    @same_letter_array = []
    @PHRASE_ONE_ARRAY.each do |letter|
      if @PHRASE_TWO_ARRAY.include?(letter)
        @same_letter_array.push(letter)
      end
    end
    @same_letter_array
  end

  def anagram
    if !is_valid_phrase?()
      return "You need to input actual words!"
    elsif @PHRASE_ONE_ARRAY == @PHRASE_TWO_ARRAY
      return "#{@PHRASE_ONE} and #{@PHRASE_TWO} are anagrams."
    elsif !@PHRASE_ONE_ARRAY.any? { |letter| @PHRASE_TWO_ARRAY.include?(letter) }
      return "#{@PHRASE_ONE} and #{@PHRASE_TWO} are antigrams."
    else
      @letters = how_many_letters_match()
      return "#{@PHRASE_ONE} and #{@PHRASE_TWO} aren't anagrams but #{@letters.length} letters match: #{@letters.join(', ')}."
    end
  end
end
