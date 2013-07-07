
def sequence_check (roman_numeral_values, valid_count, level)
  max = 0
  if roman_numeral_values[valid_count] == (9 * level) || 
    roman_numeral_values[valid_count] == (4 * level)
    max = 0
    valid_count += 1
  elsif roman_numeral_values[valid_count] == (5 * level)
    max = 3
    valid_count += 1
  elsif roman_numeral_values[valid_count] == (1 * level)
    max = 3
  end

  y=0
  while roman_numeral_values[valid_count] == (1 * level) && y < max
    valid_count += 1
    y += 1
  end
  valid_count
end

hash_roman_values = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 
                'X' => 10, 'V' => 5, 'I' => 1 }

print('Enter a roman numeral:  ')
roman_numeral_string = gets.chomp

roman_numeral_values = []
valid_roman_numeral=true
  #weed out all submissions with invalid characters
for x in 0..roman_numeral_string.length-1
  if hash_roman_values[roman_numeral_string[x].upcase] == nil
    valid_roman_numeral=false
  end
  break if valid_roman_numeral == false
end

#CM, CD, XC, XL, IX, IV
if valid_roman_numeral
  #populate hash_roman_values with values
  for x in 0..roman_numeral_string.length-1
    a=hash_roman_values[roman_numeral_string[x].upcase]
    if x < roman_numeral_string.length-1
      b=hash_roman_values[roman_numeral_string[x+1].upcase]
      if a < b
        c = b
        while c > 10
          c = c/10
        end
        #range check
        percent_different = c == 5 ? 0.2 : 0.1
        if a == b * percent_different 
          a=a*-1
        else
          valid_roman_numeral = false   
        end
      end
    end
    break if valid_roman_numeral == false
    roman_numeral_values.push a
  end
end

if valid_roman_numeral
#consolidate values
  number_of_times = roman_numeral_values.length-1
  for x in 0..number_of_times
    a=roman_numeral_values[x]
    if x < number_of_times
      b=roman_numeral_values[x+1]
      if a < b
        roman_numeral_values[x+1] += roman_numeral_values[x]
        roman_numeral_values.delete_at(x)
        number_of_times -= 1
      end
    end
  end
end

if valid_roman_numeral
#  1000 1000 900 50 10 10 10 5 1 1 1
  #get thousands
  thousands_count = 0
  valid_count = 0
  while roman_numeral_values[valid_count] == 1000 && thousands_count < 3
    if thousands_count < 3
      thousands_count += 1
      valid_count += 1
    else
      valid_roman_numeral == false
    end
  end
end

if valid_roman_numeral
  #900 500 400 100
  #90 50 40 10
  #9 5 4 1
  2.downto(0) { |x| valid_count = 
    sequence_check(roman_numeral_values, valid_count, 10**x) }
end

if valid_roman_numeral
  if valid_count < roman_numeral_values.length
    valid_roman_numeral = false
  end
end

if valid_roman_numeral  
  total=0
  for x in 0..roman_numeral_values.length-1
    total += roman_numeral_values[x]
  end
  puts("#{roman_numeral_string} translates to #{total}.")
else
  puts("#{roman_numeral_string} is not a valid roman numeral.")
  puts('Please double check and then try again.')
end

