=begin 
	21.03.2009 Държавен изпит по Информатика
	задача 5. намира броя на подсписъците на даден списък 
	(count-sub '(1 1) '(1 1 1 2 1 1)) -> 3
	Това са конкретните под-списъци:
	('1 1' 1 2 1 1), (1 '1 1' 2 1 1), (1 1 1 2 '1 1')
=end

a1 = [1, 1]
a2 = [1, 1, 1, 2, 1, 1]

def is_sub?(ar1, ar2)
	len = ar1.length-1
	0.upto(len) do |x|
		return 0 if ar1[x] != ar2[x] 
	end
	return 1
end

def cout_sub(ar1, ar2, numb)
	if ar2.empty?
		return numb
	end
	if is_sub?(ar1, ar2) == 1
		numb+=1
	end
	ar2.shift
	count_sub(ar1, ar2, numb)
end

puts rec(a1, a2, 0)