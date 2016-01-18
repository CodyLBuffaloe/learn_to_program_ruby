=begin
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
  left  = number
  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = englishNumber write
    numString = numString + trillions + " trillion"

    if left > 0
        numString = numString + " "
    end

  end

  write = left/1000000000
  left = left - write*1000000000
  if write > 0
    billions = englishNumber write
    numString = numString + billions + " billion"

    if left > 0
        numString = numString + " "
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = englishNumber write
    numString = numString + millions + " million"

    if left > 0
        numString = numString + " "
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
        numString = numString + " "
    end
  end

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
      numString = numString + ' '
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

puts englishNumber(15000000000000)
puts englishNumber(4000000000)
puts englishNumber(500300652)
puts englishNumber(1003652)
puts englishNumber(100253)
puts englishNumber(10253)
puts englishNumber(1253)

=end

def wedding_number num
    if num < 0
        puts "Please put a year"
    end

    wedding_date = " "

    ones = ['one',     'two',       'three',    'four',     'five',
                'six',     'seven',     'eight',    'nine']

    tens = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                          'sixty',   'seventy',   'eighty',   'ninety']

    teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                           'sixteen', 'seventeen', 'eighteen', 'nineteen']

    remainder = num

    year = remainder/10
    remainder = remainder - year*10

    if year > 0
        if remainder != 0
            thousands = wedding_number year
            wedding_date = wedding_date +  + " hundred and "
        else
           wedding_date = wedding_date + thousands + " thousand and "
        end
    end

   year = remainder/10
   remainder  = remainder - year*10

   if year > 0
     if ((year == 1) and (remainder > 0))

       wedding_date = wedding_date + teens[year-1]
       year = 0
     else
       wedding_date = wedding_date + tens[year-1]
     end

     if year > 0
          wedding_date = wedding_date + '-'
     end
   end

  year = remainder  # How many ones left to write out?
  remainder  = 0     # Subtract off those ones.

  if year > 0
     wedding_date = wedding_date + ones[year-1]
  end
 wedding_date
end


puts wedding_number(2023)
puts wedding_number(1974)