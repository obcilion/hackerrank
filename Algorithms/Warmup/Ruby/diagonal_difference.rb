#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)

for a_i in (0..n-1)
  a_t = gets.strip
  a[a_i] = a_t.split(' ').map(&:to_i)
end

s1 = 0
s2 = 0

for a_i in (0..n-1)
  s1 += a[a_i][a_i]
end

for a_i in (0..n-1)
  s2 += a[a_i][n-1-a_i]
end

puts (s1 - s2).abs
