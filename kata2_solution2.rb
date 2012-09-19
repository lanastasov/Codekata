arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
arr0 = [4, 8, 19, 20, 21, 45, 55]

def binsearch(mas, num, l, r)
  return 0 if l > r
  if num == mas[(l+r)/2] 
	return (l+r)/2;
  elsif num < mas[(l+r)/2] 
	return binsearch(mas, num, l, (l+r)/2)
  elsif num > mas[(l+r)/2]
	return binsearch(mas, num, (l+r)/2, r)
  end
end

for i in arr
  puts binsearch(arr, i, 0, arr.length)
end


  
