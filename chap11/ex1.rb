# Safer picture downloading. Adapt the picture-downloading/file-renaming
# program to your computer by adding some safety features to make sure
# you never overwrite a file. A few methods you might find useful are
# File.exist? (pass it a filename, and it will return true or false) and exit (like if
# return and Napoleon had a baby—it kills your program right where it stands;
# this is good for spitting out an error message and then quitting).

Dir.chdir 'C:/Users/User/Pictures/clonephone' # changes thge working directory, originally its the dir where the .rb file resides

pic_names = Dir['C:/Users/User/Pictures/Phone Wallpaper/*.jpg'] # dir from where we want to copy files

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
	print '.' # This is our "progress bar"
	
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

#Exits the program if the file already exists
	if File.exist? new_name 							
		puts "\nEnter a different batch name as similar name file exists!"
		exit
	else
		File.rename name, new_name
	end
	pic_number = pic_number + 1
end

puts # this is so we arent on progress bar line
puts 'Done'