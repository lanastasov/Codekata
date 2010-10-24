def two_power_n(n)
  2**n-1
end

arr0 = [1000, 1000000, 1000000000, 1000000000000, 8000000000000]
puts "Kata Three: How Big, How Fast?"
puts "     \n How Big:"
puts "\n1: roughly how many binary digits (bit) are required for the unsigned representation of: "

def how_big_first(arr, ret, ctch)
  for i in arr
    while ctch <= i
      ctch = two_power_n(ret)
      ret=ret+1
    end
    print "#{i} => ", ret-1, "\n"
  end
end

how_big_first(arr0, 1, 1)

puts "\n2: My town has approximately 20,000 residences. How much space is required to store the names, addresses, and a phone number for all of these (if we store them as characters)?"

def how_big_second()
  chars_needed = 200
  print "Answer ", 20000*chars_needed/(1024.0*1024.0), " Mbytes\n"
end

how_big_second()

puts "\n3: I’m storing 1,000,000 integers in a binary tree. Roughly how many nodes and levels can I expect the tree to have? Roughly how much space will it occupy on a 32-bit architecture? "

def how_big_third()
  puts "\n If the tree is balanced:"
  puts "There will be 19 levels"
  puts "There will be #{2**19} elements in the nodes"
  puts "There will be #{1000000-(2**19)} elements in the leaves"
end

how_big_third()

puts "   \n How Fast:\n "
puts "1: My copy of Meyer’s Object Oriented Software Construction has about 1,200 body pages. Assuming no flow control or protocol overhead, about how long would it take to send it over an async 56k baud modem line? "

def how_fast_first(number_of_lines, number_of_chars)
  charnum = 1200*number_of_lines*number_of_chars
  speed_per_second_in_bytes = (56/8)*1024.0
  puts "\nThe time in seconds #{charnum/speed_per_second_in_bytes} seconds \n"
  puts "The time in minutes #{charnum/speed_per_second_in_bytes/60} minutes \n"
end

how_fast_first(60, 70)

puts "\n2: My binary search algorithm takes about 4.5mS to search a 10,000 entry array, and about 6mS to search 100,000 elements. How long would I expect it to take to search 10,000,000 elements (assuming I have sufficient memory to prevent paging). \n"

def how_fast_second(number_to_calculate_the_time)
  comparisons1 = 0
  comp_num1 = 0
  while comp_num1 < 100_000
    comparisons1+=1
    comp_num1 = 2**comparisons1
  end
  puts "\n#{6.0/comparisons1} ms for one comparison"

  comparisons2 = 0
  comp_num2 = 0
  while comp_num2 < number_to_calculate_the_time
    comparisons2+=1
    comp_num2 = 2**comparisons2
  end

  puts "#{6.0/comparisons1*comparisons2} ms to complete for #{number_to_calculate_the_time} elements\n"
end

how_fast_second(10_000_000)

puts "\n3: Unix passwords are stored using a one-way hash function: the original string is converted to the ‘encrypted’ password string, which cannot be converted back to the original string. One way to attack the password file is to generate all possible cleartext passwords, applying the password hash to each in turn and checking to see if the result matches the password you’re trying to crack. If the hashes match, then the string you used to generate the hash is the original password (or at least, it’s as good as the original password as far as logging in is concerned). In our particular system, passwords can be up to 16 characters long, and there are 96 possible characters at each position. If it takes 1mS to generate the password hash, is this a viable approach to attacking a password? \n"

def how_fast_third()
  puts "\nWe have #{96**16} possible passwords"
  puts "We need #{96**16.0/(1000*60*60*24*364)} years"
end

how_fast_third()

