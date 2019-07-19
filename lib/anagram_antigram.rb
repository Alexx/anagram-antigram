require('pry')

class Anagram_Antigram
  attr_reader(:word_one, :word_two)

  def initialize(word1, word2)
    @word_one = word1
    @word_two = word2
  end

  def anagram
    @word_one_array = @word_one.downcase().split('').sort()
    @word_two_array = @word_two.downcase().split('').sort()

    if @word_one_array == @word_two_array
      return "#{@word_one} and #{@word_two} are anagrams."
    else
      return "#{@word_one} and #{@word_two} are NOT anagrams."
    end
  end
end
