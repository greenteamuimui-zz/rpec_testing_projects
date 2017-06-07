require 'rspec'
require 'my_transpose'

describe "#my_transpose" do
  let(:matrix_3) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  let(:matrix_2) { [
    [1, 2],
    [3, 4],
  ]}

  let(:matrix_5) { [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25]
  ]}


  it "transpose the 3 x 3 matrix" do
    expect(my_transpose(matrix_3)).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end

  it "transpose the 2 x 2 matrix" do
    expect(my_transpose(matrix_2)).to eq([
    [1, 3],
    [2, 4],
  ])
  end

  it "returns an empty array when the matrix is empty" do
    expect(my_transpose([[]])).to eq([[]])
  end

  it "transpose a large matrix" do
  expect(my_transpose(matrix_5)).to eq([
    [1, 6, 11, 16, 21],
    [2, 7, 12, 17, 22],
    [3, 8, 13, 18, 23],
    [4, 9, 14, 19, 24],
    [5, 10, 15, 20, 25]])
  end

end
