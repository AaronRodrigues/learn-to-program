# "Ninety-nine bottles of beer... Using englishNumber and your old program,
# "write out the lyrics to this song the right way this time. Punish your
# "computer: have it start at 9999. (Don't pick a number too large, though,
# "because writing all of that to the screen takes your computer quite a while.
# "A hundred thousand bottles of beer takes some time; and if you pick a
# "million, you'll be punishing yourself as well!

def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  left = number
  write = number/1000000000000
  left = left - write*1000000000000
  if write > 0
    trillions = englishNumber write
    numString = numString + trillions + ' trillion '
    if left > 0
      # So we don't write 'two millionfifty-one'...
      numString = numString + ' '
    end
  end

  # left = number
  write = left/1000000000
  left = left - write*1000000000
  if write > 0
    billions = englishNumber write
    numString = numString + billions + ' billion '
    if left > 0
      # So we don't write 'two millionfifty-one'...
      numString = numString + ' and '
    end
  end

  # left = number
  write = left/1000000
  left = left - write*1000000
  if write > 0
    millions = englishNumber write
    numString = numString + millions + ' million '
    if left > 0
      # So we don't write 'two millionfifty-one'...
      numString = numString + ' and '
    end
  end

  # left = number #commented out after adding millions
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'
    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  # left  = number # commented out after adding thousands
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

bottles = 99

while bottles > 0

puts  englishNumber(bottles).capitalize + ((bottles == 1)? ' bottle of beer on the wall, ' : ' bottles of beer on the wall, ') + englishNumber(bottles).capitalize + ((bottles == 1)? ' bottle of beer.' : ' bottles of beer.')
puts 'Take one down and pass it around, ' + englishNumber(bottles-1).capitalize +  (((bottles - 1) == 1)? ' bottle of beer on the wall' : ' bottles of beer on the wall.')
bottles -= 1
puts ''


 end
# puts 'Two bottles of beer on the wall, two bottles of beer.
# Take one down and pass it around, one more bottle of beer on the wall.'
# puts ''
# puts 'One bottle of beer on the wall, one bottle of beer.
# Take one down and pass it around, No more bottles of beer on the wall.'
# puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'
puts ''
