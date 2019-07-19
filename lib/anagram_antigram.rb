require('pry')

class Anagram_Antigram
  attr_reader(:word_one, :word_two)

  def initialize(word1, word2)
    @word_one = word1
    @word_two = word2
  end

  def anagram?
    @word_one_array = @word_one.split('').sort()
    @word_two_array = @word_two.split('').sort()

    if @word_one_array == @word_two_array
      return true
    else
      return false
    end
  end
end
