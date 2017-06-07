require 'rspec'
require 'two_sum'

describe "#two_sum" do
  subject(:array) { [-1, 0, 2, -2, 1] }

  it "finds positions where the two elements sum to zero" do
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end

  it "returns the pairs to be sorted smaller index before bigger index" do
    expect(two_sum([4, 1, -4, -1, -4])).to eq([[0, 2], [0, 4], [1, 3]])
  end

  it "returns nil when no pairs sum to zero" do
    expect(two_sum([1, 2, 1, 1])).to eq([])
  end

  it "return the empty array when it is empty" do
    expect(two_sum([])).to eq([])
  end


end
