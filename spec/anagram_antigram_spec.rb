require('pry')
require('rspec')
require('anagram_antigram')

describe('#anagram_antigram') do
  it('should test if words are anagrams') do
    test = Anagram_Antigram.new('ruby', 'bury')
    expect(test.anagram()).to(eq("ruby and bury are anagrams."))
  end

  it('should test if words are anagrams regardless of case') do
    test = Anagram_Antigram.new('Ruby', 'Bury')
    expect(test.anagram()).to(eq("Ruby and Bury are anagrams."))
  end

  it('should test if words contain a vowel') do
    test = Anagram_Antigram.new('ruby', 'btr')
    expect(test.anagram()).to(eq("You need to input actual words!"))
  end

  it('should test if words are antigrams') do
    test = Anagram_Antigram.new('hi', 'bye')
    expect(test.anagram()).to(eq("hi and bye are antigrams."))
  end
end
