$indent = ''

def log desc, &block
  my_indent = $indent
  $indent += '  '
  puts "#{my_indent}Beginning \"#{desc}\" . . ."
  rv = block.call
  puts "#{my_indent}. . . \"#{desc}\" finished, returning:"
  puts "#{my_indent}#{rv}"
end

log 'First block' do
      log 'Second block'  do
          log 'Third block' do
              log 'Fourth block' do
                  "Current time is:  #{Time.now}"
                end
              "Hi there from the third level!  Bye-bye."
          end    
      ss = Time.now.sec
      num = 1
      while ss > 0
        num *= 10
        ss -= 1
      end
      num
    end
  mm = Time.now.min
  num = 1
  while mm > 0
    num *= 5
    mm -= 1
  end
  num
end

