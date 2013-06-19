
def shuffle unshuffled_array # This "wraps" recursive_sort.
	recursive_shuffle unshuffled_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
	x = rand(unshuffled_array.length-1)
	shuffled_array.push(unshuffled_array[x])
	unshuffled_array.delete_at(x)
	if unshuffled_array.length > 0 then
		recursive_shuffle(unshuffled_array, shuffled_array)
	else
		return shuffled_array
	end
end

unshuffled_array = ['cow', 'zebra', 'elephant', 'horse', 'dog', 'orangutan', 'gorilla', 
			'aardvark', 'lion', 'tiger', 'puma', 'ferret', 'beaver', 'DOG']

shuffled_array = shuffle(unshuffled_array)
puts(shuffled_array)
