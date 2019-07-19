require('pry')
require('rspec')
require('anagram_antigram')

describe('#anagram_antigram') do
  it('should return true if two words are anagrams') do
    test = Anagram_Antigram.new('ruby', 'bury')
    expect(test.anagram?()).to(eq(true))
  end
end
