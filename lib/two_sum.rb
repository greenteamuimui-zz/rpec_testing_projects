def two_sum(array)
  ans = []
  i = 0
  len = array.length
  while i < len - 1
    j = i + 1
    while j < len
      ans << [i, j] if array[i] + array[j] == 0
      j += 1
    end
    i += 1
  end
  ans
end
