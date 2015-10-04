# directory of wmv files
wmv_files_path = "E:/lanastasov/HASKELL/Haskell Fundamentals Part 1"

if wmv_files_path == "" then
	wmv_files_path = Dir.pwd
else
	Dir.chdir ("#{wmv_files_path}")
end

dirs = []
Dir.glob("*") { |x|
	dirs << x if x != "\n" && File.directory?("#{x}") 
}

# if the video doesn't play in the browser use this:
# ffmpeg -i input.mp4 -vcodec libx264 output.mp4

if dirs.length > 0 then
	for dir in dirs do 
		Dir.chdir("#{dir}")
		Dir.glob("*").each { |file|
			if file =~ /.wmv/ then
				system("ffmpeg -i \"#{file}\" \"#{file.gsub(".wmv", ".mp4")}\"")	
			end
		}
		Dir.chdir("..")
	end
end
