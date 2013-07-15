def dong(&block)
  num_of_times = Time.new.hour
  if num_of_times > 12
    num_of_times -= 12
  end
  x = 1
  while num_of_times > 0
    x.times { block.call }
    puts ("#{x}:00 o'clock")
    puts
    num_of_times -= 1
    x += 1
  end
end

dong do 
  puts "DONG! "
end

