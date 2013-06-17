def old_roman i_num
# I = 1    V = 5    X = 10    L = 50
# C = 100  D = 500  M = 1000
romUnit = [1000, 500, 100, 50, 10, 5, 1]
romLtr = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
r_numeral = ''
x=0 
	while x < romUnit.length
		if (i_num >= romUnit[x]) then
			(i_num/romUnit[x]).times { r_numeral = r_numeral + romLtr[x] }
			i_num = i_num%romUnit[x]
		end
		x = x+1
	end
return r_numeral
end

puts old_roman 100