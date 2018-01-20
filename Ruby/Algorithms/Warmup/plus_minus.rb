n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positives = 0
zeroes = 0
negatives = 0

arr.each do |i|
  positives += 1 if i > 0
  negatives += 1 if i < 0
  zeroes += 1 if i == 0
end

p_fraction = positives/n.to_f
n_fraction = negatives/n.to_f
z_fraction = zeroes/n.to_f

puts "#{p_fraction}"
puts "#{n_fraction}"
puts "#{z_fraction}"
