arr = [ 1,12, 33, 45, 75,86, 97,108, 900 ]
arr0= [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]

@left = 0
@right = arr.length
def bsearch( num, arr )
  @mid = (@left + @right)/2
  while num != arr[@mid] do
    if num < arr[@mid] then
      @right = @mid
      @mid = (@left + @right)/2
    elsif num > arr[@mid] then
      @left = @mid
      @mid = (@left + @right)/2
    end
    
  end
  if num == arr[@mid] : puts @mid
  end
  yield
end

@seek=900
bsearch( @seek, arr ){puts "arr[#{@mid}]=#{@seek}\n" }
