# Write the program we talked about at the very beginning of this chapter. Hint:
# There's a lovely array method which will give you a sorted version of an
# array:  sort. Use it!

array = []

while true
  reply = gets.chomp.downcase
  break if reply == ''
  array << reply
end

puts array.sort
