# Wedding number. How about wedding_number? It should work almost the same as
# english_number, except it should insert the word and all over the place,
# returning things like 'nineteen hundred and seventy and two', or however
# wedding invitations are supposed to look. I’d give you more examples, but I
# don’t fully understand it myself. You might need to contact a wedding
# coordinator to help you. (I’m really just kidding. You don’t have to do this
# one. I didn’t even do this one.)

def weddingNumber number
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
  
  write = left/1000
  left = left - write*1000

  if write > 1
    # thousands = weddingNumber write
    numString = numString + onesPlace[write-1] + ' thousand'
    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' and '
    end
  end

  # left  = number # commented out after adding thousands
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
   
    numString = numString + teenagers[-1] 
   

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString +  teenagers[left-1] 
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
      numString =  numString + '-'
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


puts weddingNumber(1901)
puts weddingNumber(1921)
puts weddingNumber(1999)
puts weddingNumber(2000)
puts weddingNumber(2014)
puts weddingNumber(2099)
puts weddingNumber(3009)