arr = [1,12, 33, 45, 75,86, 97,108, 900]
arr0 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def bsearch(num, arr, left, right)
  mid = (left + right)/2
  while num != arr[mid] 
    if num < arr[mid] 
      right = mid
      mid = (left + right)/2
    elsif num > arr[mid] 
      left = mid
      mid = (left + right)/2
    end
  end
  puts mid if num == arr[mid]
end

1.upto(9) do |seek|
	bsearch(seek, arr0, 0, arr0.length) 
end

for seek1 in arr 
		bsearch(seek1, arr, 0, arr.length)
end
