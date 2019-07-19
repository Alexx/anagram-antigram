require('pry')
require('rspec')
require('anagram_antigram')

describe('#anagram_antigram') do
  it('should do something') do
    test = Anagram_Antigram.new('hi')
    expect(test.anagram()).to(eq('something'))
  end
end
