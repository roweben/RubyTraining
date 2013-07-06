roman_values = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 
                'X' => 10, 'V' => 5, 'I' => 1 }

print('Enter a roman numeral:  ')
roman_numeral = gets.chomp

roman_numeral_values = []

for x in 0..roman_numeral.length-1
  a=roman_values[roman_numeral[x].upcase]
  if x < roman_numeral.length-1
    b=roman_values[roman_numeral[x+1].upcase]
    if a < b
      a=a*-1
    end
  end
  roman_numeral_values.push a
end

total=0
for x in 0..roman_numeral_values.length-1
  total=total+roman_numeral_values[x]
end

puts(total)

