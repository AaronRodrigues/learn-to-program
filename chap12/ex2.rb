# Happy Birthday! Ask what year a person was born in, then the month, then the
# day. Figure out how old they are and give them a big SPANK! for each birthday
# they have had.

puts "Enter birth year"
year = gets.chomp
puts "Enter bday month"
month = gets.chomp
puts "Enter bday day"
day = gets.chomp
dob = Time.mktime(year, month, day)
time = Time.new - dob
spank = time /(60*60*24*365.25)
num= spank.to_i
puts num.to_s + ' you say? '
num.times{puts "SPANK!"}