# Birthday helper! Write a program to read in names and birth dates from
# a text file. It should then ask you for a name. You type one in, and it tells
# you when that person’s next birthday will be (and, for the truly adventurous,
# how old they will be). The input file should look something like this:
# Christopher Alexander, Oct 4, 1936
# Christopher Lambert, Mar 29, 1957
# Christopher Lee, May 27, 1922
# Christopher Lloyd, Oct 22, 1938
# Christopher Pine, Aug 3, 1976
# Christopher Plummer, Dec 13, 1927
# Christopher Walken, Mar 31, 1943
# The King of Spain, Jan 5, 1938
# (That would be me Christopher Pine, not the young James T. Kirk; I don’t
# care when he was born.) You’ll probably want to break each line up and
# put it in a hash, using the name as your key and the date as your value.
# In other words: words:
# birth_dates['The King of Spain'] = 'Jan 5, 1938'
# (You can store the date in some other format if you prefer.)
# Though you can do it without this tip, your program might look prettier
# if you use the each_line method for strings. It works pretty much like each
# does for arrays, but it returns each line of the multiline string one at a
# time (but with the line endings, so you might need to chomp them). Just
# thought I’d mention it….

# First, load in the birthdates
birth_dates = {}

File.readlines('dates.txt').each do |line|
name, date, year = line.split(',') # returns name dates and year and assigns them 
birth_dates[name] = Time.gm(year, *(date.split)) # date.split will split the date and the month where there is a space
end

#Now ask the user what they want
puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birth_dates[name]

if bday == nil
puts "Ooooh, I don't know that one...."
else
	now = Time.new
	age = now.year - bday.year

	if now.month > bday.month || (now.month == bday.month && now.day > bday.day) # Takes into the account an edge case
	age += 1
	end

	if now.month == bday.month && now.day == bday.day
	puts "#{name} turns #{age} TODAY!!"
	else
	#strftime formats date according to directives %b - The abbreviated month
	#name (``Jan'') %d  Day of the month, zero-padded (01..31)
	date = bday.strftime "%b %d" 				
	puts "#{name} will be #{age} on #{date}"
	end
end









