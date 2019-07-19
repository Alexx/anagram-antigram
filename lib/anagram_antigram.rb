require('pry')

class Anagram_Antigram
  attr_reader(:phrase_one, :phrase_two)

  def initialize(phrase1, phrase2)
    @phrase_one = phrase1
    @phrase_two = phrase2
  end

  def is_valid_phrase?()
    @VOWELS = ["a", "e", "i", "o", "u"]
    @check_phrase_one = @phrase_one.downcase().split(' ')
    @check_phrase_two = @phrase_two.downcase().split(' ')

    @check_phrase_one.each do |word|
      if !word.split('').any? { |vowel| @VOWELS.include?(vowel) }
        @valid_phrase = false
      end
    end

    @check_phrase_two.each do |word|
      if !word.split('').any? { |vowel| @VOWELS.include?(vowel) }
        @valid_phrase = false
      end
    end

    if @valid_phrase == false
      return false
    else
      return true
    end
  end

  def anagram
    #Force words in phrase to lowercase, in alphabetical order and delete all empty spaces
    @phrase_one_array = @phrase_one.downcase().split('').sort().reject { |e| e == " "}
    @phrase_two_array = @phrase_two.downcase().split('').sort().reject { |e| e == " "}

    if !is_valid_phrase?()
      return "You need to input actual words!"
    elsif @phrase_one_array == @phrase_two_array
      return "#{@phrase_one} and #{@phrase_two} are anagrams."
    elsif !@phrase_one_array.any? {|letter| @phrase_two_array.include?(letter)}
      return "#{@phrase_one} and #{@phrase_two} are antigrams."
    else
      return "#{@phrase_one} and #{@phrase_two} are NOT anagrams."
    end
  end
end
