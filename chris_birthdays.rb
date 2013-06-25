require 'date'

mos = { '01' => 'January', '02' => 'February', '03' => 'March', '04' => 'April', 
		'05' => 'May', '06' => 'June', '07' => 'July', '08' => 'August',
		'09' => 'September', '10' => 'October', '11' => 'November', '12' => 'December' }
birth_dates = Hash.new

File.open('chrises.txt', 'r') do |f1|  
  while line = f1.gets
  	broken_out = line.split(',')
  	name = broken_out[0]
  	yob = broken_out[2][1..4]
  	mob = broken_out[1][1..3]
  	dob = broken_out[1][5..(broken_out[1].length-1)]
  	birth_dates[name] = Date.parse(mob.to_s + ' ' + dob.to_s + ' ' + yob.to_s)
  end  
end  

while true
	print 'Whose birthdate should I look up:  '
	lookup = gets.chomp
	birthdate_string = birth_dates[lookup].to_s
	if (birthdate_string != '') then break
	else
		puts ("#{lookup} not in the database.  Please doublecheck and re-enter.")
	end
end
#to subtract dates, dates are in yyyymmdd format
today_string = (Date.today).to_s
	#remove hyphens
today_string = today_string[0..3] + today_string[5..6] + today_string[8..9]
today_year = today_string[0..3]
today_year = today_year.to_i
  #to_s to keep leading zero so compare works properly
today_mmdd = today_string[4..7].to_s
    #remove hyhens
birthdate_string = birthdate_string[0..3] + birthdate_string[5..6] + birthdate_string[8..9]
	#to_s to keep leading zero so compare works properly
birthdate_mmdd = birthdate_string[4..7].to_s
if (birthdate_mmdd < today_mmdd) then
	today_year = today_year + 1
end
age_string = (today_string.to_i-birthdate_string.to_i)/10000
if (birthdate_mmdd != today_mmdd) then
	age_string = age_string + 1
	next_birthdate = "on #{mos[birthdate_mmdd[0..1]]} #{birthdate_mmdd[2..3]}, #{today_year.to_s}"
else
	next_birthdate = 'today'
end

puts ("#{lookup} turns #{age_string} #{next_birthdate}.")
