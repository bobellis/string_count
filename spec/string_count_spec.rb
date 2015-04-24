require ('rspec')
require ('string_count.rb')

describe('String#string_count') do
  it('it takes a target word and the same word as the string to check and returns 1') do
    expect('circus'.count_words('circus')).to(eq(1))
  end

  it('it takes a target word and a string with itself listed twice to check and returns 2') do
    expect('circus'.count_words('circus circus')).to(eq(2))
  end

  #it("takes a target word and a string then counts the number of times the target word appears in the string") do
  #end
end
