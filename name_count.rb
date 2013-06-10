print 'Enter your first name:  '
fname = gets.chomp
print 'Enter your middle name:  '
mname = gets.chomp
print 'Enter your last name:  '
lname = gets.chomp
name_ln = fname.length + mname.length + lname.length
puts 'Your name has ' + name_ln.to_s + ' characters.'