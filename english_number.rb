
def english_number number
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	if number >= 1000000000000000000000000000000000000 # No negative numbers.
		return 'Please enter a number below 1 undecillion.'
	end
	if number == 0
		return 'zero'
	end

	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.
	ones_place = ['one', 'two', 'three',
				'four', 'five', 'six',
				'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty',
				'forty', 'fifty', 'sixty',
				'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen',
				'fourteen', 'fifteen', 'sixteen',
				'seventeen', 'eighteen', 'nineteen']
	num_units =	['thousand', 'million', 'billion', 'trillion',
				'quadrillion', 'quintillion', 'sextillion', 
				'septillion', 'octillion', 'nonillion', 'decillion']
	number_string = number.to_s
	partial_segment = number_string.length%3
	num_segments = []
	y=0
    if partial_segment > 0
    	num_segments.push(number_string[y,partial_segment].to_s)
    	y=y+partial_segment
    end
    while y<number_string.length
    	num_segments.push(number_string[y,3])
    	y=y+3
    end
    x=0

	# "left" is how much of the number
	# we still have left to write out.
	# "write" is the part we are
	# writing out right now.
	# write and left...get it? :)
    while x < num_segments.length
    	if num_segments[x].to_i > 0
    		write = num_segments[x].to_i/100 # How many hundreds?
			left = num_segments[x].to_i - write*100 # Subtract off those hundreds.
			if write >= 1
				num_string = num_string + ones_place[write-1] + ' hundred '
			end
			write = left/10 # How many tens left?
			left = left - write*10 # Subtract off those tens.
			if write > 0
				if ((write == 1) and (left > 0))
				# Since we can't write "tenty-two" instead of
				# "twelve", we have to make a special exception
				# for these.
					num_string = num_string + teenagers[left-1]
				# The "-1" is because teenagers[3] is
				# 'fourteen', not 'thirteen'.
				# Since we took care of the digit in the
				# ones place already, we have nothing left to write.
					left = 0
				else
					num_string = num_string + tens_place[write-1]
				# The "-1" is because tens_place[3] is
				# 'forty', not 'thirty'.
				end
				if left > 0
				# So we don't write 'sixtyfour'...
					num_string = num_string + '-'
				end
			end
			write = left # How many ones left to write out?
			left = 0 # Subtract off those ones.
			if write > 0
				num_string = num_string + ones_place[write-1]
				# The "-1" is because ones_place[3] is
				# 'four', not 'three'.
			end
			if x < num_segments.length-1
				num_string = num_string + ' ' + num_units[num_segments.length-x-2] + ' '
			end
		end
		x = x+1
	end
	# Now we just return "num_string"...
	num_string
end

puts english_number(20070000035)
puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(1001000010000)
puts english_number(10000000090009000009000008)