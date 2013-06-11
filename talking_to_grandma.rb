puts ('Come on, chat with granny.')
bye_count = 1
while true
	reply = gets.chomp
	if (reply != reply.upcase) then
		puts ('HUH?! SPEAK UP, SONNY!')
	elsif (reply != 'BYE') then
		yy = rand(20) + 1930
		puts ('NO, NOT SINCE ' + yy.to_s + '!')
		bye_count = 1
	elsif (bye_count == 3) then
		break
	else
		bye_count = bye_count + 1
	end
end
