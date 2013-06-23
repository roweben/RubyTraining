# Just for my own convenience, I'll go there now.
Dir.chdir 'C:/PDFs from Desktop'
# First we find all of the pictures to be moved.
pdf_names = Dir['*.{pdf}']
puts ("PDF name: " + pdf_names[0])
puts ('pdf names:  ' + pdf_names.length.to_s)
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts ''
print "Downloading " + pdf_names.length.to_s + " files: "

# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pdf_number = 1
puts (pdf_names)
pdf_names.each do |name|
	if pdf_number < 10
		new_name = batch_name + '0' + pdf_number.to_s + '.pdf'
	else
		new_name = batch_name + pdf_number.to_s + '.pdf'
	end
	puts (name)
	if File.exist?(new_name)
		puts("File already exists!  Will now exit")
		exit
	end
	File.rename(name, new_name)
# Finally, we increment the counter.
	pdf_number = pdf_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'