gets
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
n = 0

arr.map { |m| n += m}

puts n
