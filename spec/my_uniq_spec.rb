require 'rspec'
require 'my_uniq'

describe "#my_uniq" do

  it "returns uniq elements in an array" do
    expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
  end

  it "returns elements sorted in the order in the array arg" do
    expect(my_uniq([3, 2, 1, 2, 2, 1])).to eq([3, 2, 1])
  end

  it "return an empty array when the array arg is empty" do
    expect(my_uniq([])).to eq([])
  end

  it "return the array when there is only 1 element" do
    expect(my_uniq([1, 1, 1])).to eq([1])
  end

  it "return the array with non-integer elements" do
    expect(my_uniq(["hi", "hi", "hey"])).to eq(["hi", "hey"])
  end

end
