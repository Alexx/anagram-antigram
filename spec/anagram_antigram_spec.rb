require('pry')
require('rspec')
require('anagram_antigram')

describe('#anagram_antigram') do
  it('should return true if two words are anagrams') do
    test = Anagram_Antigram.new('ruby', 'bury')
    expect(test.anagram()).to(eq("ruby and bury are anagrams."))
  end

  it('should return true if two words are anagrams regardless of case') do
    test = Anagram_Antigram.new('Ruby', 'Bury')
    expect(test.anagram()).to(eq("Ruby and Bury are anagrams."))
  end
end
