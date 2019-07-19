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

  it('should test if multi-word sentences are anagrams') do
    test = Anagram_Antigram.new('bury dog', 'ruby god')
    expect(test.anagram()).to(eq("bury dog and ruby god are anagrams."))
  end

  # it('should return number of letters that match if word is NOT an anagram') do
  #   test = Anagram_Antigram.new('cat', 'batty')
  #   expect(test.anagram()).to(eq("These words aren't anagrams but 2 letters match: a, t."))
  # end
end
