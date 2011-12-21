def rev(str)
  loop = str.length
  word = ""
  while loop > 0
	word << str[loop-=1]
  end
  return word;
end

def rev2(str)
  i = str.length
  word = ""
  str.length.times {|x| word.insert(x, str[-x-1])}
  return word
end

puts rev("foobar")
puts rev2("foobar")
