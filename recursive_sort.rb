

def sort unsorted_array # This "wraps" recursive_sort.
	recursive_sort unsorted_array, []
end

def recursive_sort unsorted_array, sorted_array
	x = 0
	y = 0
	while x < unsorted_array.length
		if unsorted_array[x] < unsorted_array[y] then
			y = x
		end
		x=x+1
	end
	sorted_array.push(unsorted_array[y])
	unsorted_array.delete_at(y)
	y = 0
	x = 0
	if unsorted_array.length > 0 then
		recursive_sort(unsorted_array, sorted_array)
	else
		return sorted_array
	end
end

unsorted_array = ['cow', 'zebra', 'elephant', 'horse', 'dog', 'orangutan', 'gorilla', 
			'aardvark', 'lion', 'tiger', 'puma', 'ferret', 'beaver', 'DOG']

sorted_array = sort(unsorted_array)
puts(sorted_array)

