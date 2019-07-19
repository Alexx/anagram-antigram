require('pry')

class Anagram_Antigram
  attr_reader(:phrase_one, :phrase_two)

  def initialize(phrase1, phrase2)
    @phrase_one = phrase1
    @phrase_two = phrase2
    @contain_vowel = true
  end

  def anagram
    @VOWELS = ["a", "e", "i", "o", "u"]
    @phrase_one_array = @phrase_one.downcase().split(' ')
    @phrase_two_array = @phrase_two.downcase().split(' ')

    @phrase_one_array.each do |word|
      if !word.split('').any? { |vowel| @VOWELS.include?(vowel) }
        @contain_vowel = false
      end
    end

    @phrase_two_array.each do |word|
      if !word.split('').any? { |vowel| @VOWELS.include?(vowel) }
        @contain_vowel = false
      end
    end

    if @contain_vowel == false
      return "You need to input actual words!"
    end

    #Join words in phrase together in alphabetical order and delete all empty spaces
    @phrase_one_array = @phrase_one_array.join('').split('').sort().reject { |e| e.empty? }
    @phrase_two_array = @phrase_two_array.join('').split('').sort().reject { |e| e.empty? }

    if @phrase_one_array == @phrase_two_array
      return "#{@phrase_one} and #{@phrase_two} are anagrams."
    elsif !@phrase_one_array.any? {|letter| @phrase_two_array.include?(letter)}
      return "#{@phrase_one} and #{@phrase_two} are antigrams."
    else
      return "#{@phrase_one} and #{@phrase_two} are NOT anagrams."
    end

  end
end
