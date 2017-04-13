puts "Enter a start year "
start = gets.chomp.to_i

puts "Enter a end year "
ending = gets.chomp.to_i

while (start <= ending)


      if start % 400 == 0
          puts start.to_s
            start += 1
            elsif
                (start % 4 == 0) && (start % 100 != 0)
                  puts start.to_s
                    start += 1
                    else
                     start += 1
      end
end




# if year % 400 == 0
#   puts "leap year"
# elsif
#   (year % 4 == 0) && (year % 100 != 0)
#   puts "leap"
# else
#   puts "not a leap"
# end



 # return "leap year" if (year % 400 == 0)
 # puts ((year % 4 == 0) && !(year % 100 == 0) ) ? "leap" : "not leap"


#
# puts year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) ? "leap" : "not leap"




# is_leap_year = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
# puts is_leap_year ? "leap" : "not leap"


# if year % 4 == 0
#    if year % 100 == 0
#      if yearVar % 400 == 0
#        return "true"
#      end
#      return "false"
#    end
#    return "true"
#  end
#  puts "false"



# puts (year % 4 == 0 && year % 100 != 0 || year % 400 == 0 )? "leap" : "not leap"


# if ((year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0))
#  puts "leap"
#  else
#    puts "not leap"
#  end






# if year % 400 == 0
#   puts "is a leap year"
#
# elsif year % 4 == 0 && year % 100 != 0
#   puts "is a leap year"
# elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0
#   puts "is a leap year"
# else year % 4 !=0
# puts "not a leap year"
# end
