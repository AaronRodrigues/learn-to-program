# Try writing the above program without using the sort method. A large part of
# programming is solving problems, so get all the practice you can!

words = []
while true
   word = gets.chomp
   break if word == ''
   words << word
end

while words.size > 0
   word = words.min{|a,b| a.downcase <=> b.downcase }
   puts word
   words -= [word]
end
