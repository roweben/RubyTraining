puts ('Calculator App:')
print ("Enter 1st number:  ")
num_1 = gets.chomp
print ("Enter 2nd number:  ")
num_2 = gets.chomp
print ("Select Operation:  1/Add; 2/Subtract; 3/Multiply; 4/Divide:  ")
calc_op = gets.chomp
if calc_op == '1'
	puts ("#{num_1} + #{num_2} = #{num_1.to_i + num_2.to_i}.")
elsif calc_op == '2'
	puts ("#{num_1} - #{num_2} = #{num_1.to_i - num_2.to_i}.")
elsif calc_op == '3'
	puts ("#{num_1} * #{num_2} = #{num_1.to_i * num_2.to_i}.")
elsif calc_op == '4'
	puts ("#{num_1} / #{num_2} = #{num_1.to_f / num_2.to_f}.")
end
	
