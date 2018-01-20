a = gets.strip.split(' ').to_ary.map(&:to_i)
b = gets.strip.split(' ').to_ary.map(&:to_i)

a_score = b_score = 0

a.each_with_index do |val, index|
  a_score += 1 if val > b[index]
  b_score += 1 if val < b[index]
end

puts "#{a_score} #{b_score}"
