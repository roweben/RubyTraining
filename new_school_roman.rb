def new_roman i_num
# I = 1    V = 5    X = 10    L = 50
# C = 100  D = 500  M = 1000
# romUnit = [1000, 500, 100, 50, 10, 5, 1]
# romLtr = ['M', 'D', 'C', 'L', 'X', 'V', 'I']

r_numeral = ''


	if (i_num >= 1000) then
		(i_num/1000).times { r_numeral = r_numeral + 'M' }
		i_num = i_num%1000
	end

	if (i_num >= 500) then
		if (i_num >= 900) then
			r_numeral = r_numeral + 'CM'
			i_num = i_num-900
		else
			(i_num/500).times { r_numeral = r_numeral + 'D' }
			i_num = i_num%500
		end
	end

	if (i_num >= 100) then
		if (i_num >= 400) then
			r_numeral = r_numeral + 'CD'
			i_num = i_num-400
		else
			(i_num/100).times { r_numeral = r_numeral + 'C' }
			i_num = i_num%100
		end
	end

	if (i_num >= 50) then
		if (i_num >= 90) then
			r_numeral = r_numeral + 'XC'
			i_num = i_num-90
		else
			(i_num/50).times { r_numeral = r_numeral + 'L' }
			i_num = i_num%50
		end
	end

	if (i_num >= 10) then
		if (i_num >= 40) then
			r_numeral = r_numeral + 'XL'
			i_num = i_num-40
		else
			(i_num/10).times { r_numeral = r_numeral + 'X' }
			i_num = i_num%10
		end
	end

	if (i_num >= 5) then
		if (i_num == 9) then
			r_numeral = r_numeral + 'IX'
			i_num = i_num-9
		else
			(i_num/5).times { r_numeral = r_numeral + 'V' }
			i_num = i_num%5
		end
	end

	if (i_num >= 1) then
		if (i_num == 4) then
			r_numeral = r_numeral + 'IV'
		else
			(i_num/1).times { r_numeral = r_numeral + 'I' }
		end
	end

	r_numeral

end

puts (new_roman 2929)

