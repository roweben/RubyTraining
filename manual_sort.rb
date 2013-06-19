unsorted_array = ['LION', 'cow', 'zebra', 'elephant', 'horse', 'dog', 'orangutan', 'gorilla', 
			'aardvark', 'lion', 'Cow', 'tiger', 'puma', 'ferret', 'beaver', 'DOG']
sorted_array = []

x = 0
y = 0
z = 0
items_count = unsorted_array.length

while x < items_count
	while y < unsorted_array.length
		if unsorted_array[z].downcase > unsorted_array[y].downcase then
			z = y
		end
		y=y+1
	end
	sorted_array.push(unsorted_array[z])
	unsorted_array.delete_at(z)
	y = 0
	z = 0
	x = x + 1
end

puts sorted_array

