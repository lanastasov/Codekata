#require 'test/unit'
a = [ 1, 2, 3, 4, 5, 6 ]
g = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
  @position = g.length/2
def bsearch( num, mas )
  if mas[mas.length/2] == num then
    return @position  
  elsif num < mas[mas.length/2] then
    @pos = mas.length/2
# if @pos = 1 then
#     @position = @position - 1
#    else
      @position = (@pos)/2
#    end
    (mas.length/2 + 1).times do
      mas.delete_at(@pos)
    end
      bsearch( num, mas)
  elsif num > mas[mas.length/2] then
#   @old_postion = @position
    @position = @position + (mas.length/4 + 1 ) 
#    @position = @old_position
    (mas.length/2 + 1).times do
      mas.delete_at(0)
    end
    bsearch( num, mas )
    
  end
end
puts bsearch( 5, g )

#Doesn't work! Why?
#1.upto(11) do |x|
#  puts bsearch( x, g ) 
#end

