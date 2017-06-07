
def my_uniq(array)
  ans = []
  array.each {|n| ans << n unless ans.include?(n) }
  ans
end
