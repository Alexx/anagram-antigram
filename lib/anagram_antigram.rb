require('pry')

class Anagram_Antigram
  attr_reader(:word_one, :word_two)

  def initialize(word1, word2)
    @word_one = word1
    @word_two = word2
    @word_one_contain_vowel = false
    @word_two_contain_vowel = false
  end

  def anagram
    @VOWELS = ["a", "e", "i", "o", "u"]
    @word_one_array = @word_one.downcase().split('').sort()
    @word_two_array = @word_two.downcase().split('').sort()

    if @word_one_array.any? {|vowel| @VOWELS.include?(vowel)}
      @word_one_contain_vowel = true
    end

    if @word_two_array.any? {|vowel| @VOWELS.include?(vowel)}
      @word_two_contain_vowel = true
    end

    if @word_one_contain_vowel == false || @word_two_contain_vowel == false
      return "You need to input actual words!"
    end

    if @word_one_array == @word_two_array
      return "#{@word_one} and #{@word_two} are anagrams."
    elsif !@word_one_array.any? {|letter| @word_two_array.include?(letter)}
      return "#{@word_one} and #{@word_two} are antigrams."
    else
      return "#{@word_one} and #{@word_two} are NOT anagrams."
    end

  end
end
