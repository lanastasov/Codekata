# https://github.com/soimort/you-get
File.open("down.txt").each_line do |x|
	puts x
	system("C:/Python34/Scripts/you-get #{x}") if x != "\n"
	sleep(5)
end