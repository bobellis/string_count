require ('rspec')
require ('string_count.rb')

describe('String#string_count') do
  it('it takes a target word and the same word as the string to check and returns 1') do
    expect('circus'.count_words('circus')).to(eq(1))
  end

  it('it takes a target word and a string with itself listed multiple times to check and returns number of times it appears') do
    expect('circus'.count_words('circus circus')).to(eq(2))
  end

  it('it takes a target word and a string with itself listed multiple times as well as other words and returns the number of times it appears') do
    expect('circus'.count_words('circus clown circus elephant circus')).to(eq(3))
  end

  it('it takes a target word adn a string with itself listed multiple times as well as other words and commas and returns the number of times it appears') do
    expect('circus'.count_words('circus, clown, circus, elephants, circus')).to(eq(3))
  end

  it('it takes a target word and a string with itself listed multiple times as well as otehr words and punctuation and returns the number of times it appears') do
    expect('circus'.count_words('The circus is a fun place. The circus: a place where elephants play. We are at the circus; join us.'))
  end
end
