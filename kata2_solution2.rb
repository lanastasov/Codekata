mas = [1, 2, 3, 4, 5]
arr = [4, 8, 19, 20, 21, 45 ]
def binsearch(mas,a,l,r)
  if l > r : return 0
	end

	if a == mas[(l+r)/2] 
			return (l+r)/2;
	elsif a < mas[(l+r)/2] 
		return binsearch(mas,a,l,(l+r)/2)
	elsif a > mas[(l+r)/2]
	  return binsearch(mas,a,(l+r)/2,r)
	end
end

#puts mas
puts binsearch(arr,20,0,5)

  
