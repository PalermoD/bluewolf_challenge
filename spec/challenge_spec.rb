require 'challenge'
require 'rspec'

describe 'find duplicate number in array' do
  it "find the integer in the array that is a duplicate" do
    expect(find_duplicate(
      [1,2,3,4,25,200,400,600,100000,25]
    )).to eq(25)
  end

  it "returns nil if there is no duplicates in array" do
    expect(find_duplicate(
      [1,2,3,4,25,200,400,600,100000,2500]
    )).to eq(nil)
  end
end

describe 'first_non_repeat' do
  it "finds the first non-repeating character in a string" do
    expect(first_non_repeat('DEFD')).to eq('E')
  end
  
  it "returns nil if there are no no repeating characters in a string" do
    expect(first_non_repeat('AABBCCDDEEFF')).to eq(nil)
  end
end