puts "Part One: Weather Data\n"

File.open("weather.dat", "r") do |aFile|
  min,day = 100      
  ar = Array.new
  mas = Array.new
(0..7).each do 
  aFile.gets
end

(0..29).each do |i| 
   mas[i] = aFile.gets
   ar[i] = mas[i][5..8].to_i - mas[i][11..14].to_i
   if min > ar[i] 
    min = ar[i]
    day = i+1
   end
end

puts "The day with minimum spread is Day(#{day}) with spread(#{min})\n\n"
end

puts "Part Two: Soccer League Table\n"
File.open("football.dat", "r") do |aFile|
  num1 = Array.new
  num2 = Array.new
  min = 101
  position = 17
  (0..4).each do
    aFile.gets
  end
                              
  (0..20).each do |j|
    num1[j] = aFile.gets
    if j == 17
      num2[j] = 100
    else
      if num1[j][43..46].to_i - num1[j][50..53].to_i >= 0
        num2[j] = num1[j][43..46].to_i - num1[j][50..53].to_i
        if min > num2[j]
          min = num2[j]
          position = j
        end
      else 
        num2[j] = num1[j][50..53].to_i - num1[j][43..46].to_i
        if min > num2[j]
          min = num2[j]
          position = j
        end
      end
    end
  end 
  puts num1[position][7..21]
end

