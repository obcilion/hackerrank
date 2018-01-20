n = gets.strip.to_i
n.times do |row|
  n.times do |column|
    print n-column-1 > row ? ' ' : '#'
  end
  puts
end
