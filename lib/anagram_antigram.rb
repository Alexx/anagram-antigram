require('pry')

class Anagram_Antigram
  attr_reader(:phrase_one, :phrase_two)

  def initialize(phrase1, phrase2)
    @phrase_one = phrase1
    @phrase_two = phrase2

    #Force phrase to lowercase and split up words into an array
    @phrase_one_intact = phrase1.downcase().split(' ')
    @phrase_two_intact = phrase2.downcase().split(' ')

    #Force phrase to lowercase, in alphabetical order and delete all empty spaces
    @phrase_one_array = phrase1.downcase().split('').sort().reject { |e| e == " "}
    @phrase_two_array = phrase2.downcase().split('').sort().reject { |e| e == " "}
  end

  def is_valid_phrase?()
    @VOWELS = ["a", "e", "i", "o", "u"]

    @phrase_one_intact.each do |word|
      if !word.split('').any? { |vowel| @VOWELS.include?(vowel) }
        @valid_phrase = false
      end
    end

    @phrase_two_intact.each do |word|
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

  # def how_many_letters_match
  #
  # end

  def anagram
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
