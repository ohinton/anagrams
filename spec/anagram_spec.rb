require('rspec')
require('anagram')

describe('String#anagram') do
  it('compares an input  to see if any combination of its characters are identical to the string called upon, returns true or false') do
    expect(('cat').anagram("something")).to eq("Not an anagram!")
  end
  it('compares the elements in an array to an string to see if any combinations of the elements are identical to the string') do
    expect(('cat').anagram("cat", "something", "tca")).to eq("cat,tca")
  end
end
