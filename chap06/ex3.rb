# Extend your Deaf Grandma program: What if grandma doesn't want you to leave?
# When you shout BYE, she could pretend not to hear you. Change your previous
# program so that you have to shout BYE three times in a row. Make sure to test
# your program: if you shout BYE three times, but not in a row, you should still
# be talking to grandma.

puts "Hello Sonny! How are you?"

reply = ''
 count = 0
while count < 3

  reply = gets.chomp

 if reply == reply.upcase && reply != "BYE"
   puts "Not since " + (1930 + rand(20)).to_s
   count = 0
 elsif reply == 'BYE'
   puts "Where you going SONNY?"
   count += 1
 else
   puts "HUH?! SPEAK UP, SONNY!"
 end

end
