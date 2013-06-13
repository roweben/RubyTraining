#exercise 1 of 2 from 8.3
arr_words = []
while true
	print 'Enter new word (press enter to end):  '
	new_word = gets.chomp
	if (new_word == '') then
		break
	end
	arr_words.push new_word
end
puts arr_words.sort