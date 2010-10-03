arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def bsearch(num, arr, left, right)
  mid = (right + left)/2
	if num == arr[mid] 
	  return mid
	elsif num < arr[mid] 
	  right = mid
		bsearch(num, arr, left, right)
	elsif num > arr[mid] 
	  left = mid
	  bsearch(num, arr, left, right)
	end
end

for i in arr
	puts bsearch(i, arr, 0, arr.length)
end

