g = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
@left = 0
@right = g.length
def bsearch2( num, arr )
  @mid = (@right + @left)/2
	if num == arr[@mid] then
	  return @mid
	elsif num < arr[@mid] then
	  @right = @mid
		bsearch2( num, arr )
	elsif num > arr[@mid] then
	  @left = @mid
	  bsearch2( num, arr )
	end
end
@i=6
puts bsearch2(@i , g )

