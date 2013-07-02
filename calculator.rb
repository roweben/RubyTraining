puts ('Calculator App:')
print ("Enter 1st number:  ")
num_1 = gets.chomp
print ("Enter 2nd number:  ")
num_2 = gets.chomp
print ("Select Operation:  1-Add; 2-Subtract; 3-Multiply; 4-Divide:  ")
calc_op = gets.chomp
if calc_op == '1'
  answer = num_1.to_i + num_2.to_i
  oper = 'added to'
elsif calc_op == '2'
  answer = num_1.to_i - num_2.to_i
  oper = 'subtracted from's
elsif calc_op == '3'
  answer = num_1.to_i * num_2.to_i
  oper = 'multiplied by'
elsif calc_op == '4'
  answer = num_1.to_f / num_2.to_f
  oper = 'divided by'
else
  answer = num_1.to_i + num_2.to_i
  oper = 'added to'
end

puts ("#{num_1} #{oper} #{num_2} = #{answer}.")
	
