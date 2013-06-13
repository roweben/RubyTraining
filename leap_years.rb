puts('This program returns leap years.')
print('Enter your starting year:  ')
istarting_year = gets.chomp.to_i
print('Enter your ending year:  ')
iending_year = gets.chomp.to_i
while (istarting_year < (iending_year+1))
	if (istarting_year%100==0) then
		if (istarting_year%400 == 0) then
			puts(istarting_year.to_s)
		end
	elsif ((istarting_year%4) == 0 ) then
		puts(istarting_year.to_s)
	end
	istarting_year = istarting_year + 1
end