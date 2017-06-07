def my_transpose (matrix)
  dimensions = matrix.count
  ans = Array.new(dimensions) {Array.new}
  i = 0
  while i < dimensions
    matrix.each do |row|
      ans[i] << row[i] unless row[i].nil?
    end
    i += 1
  end
  ans
end
