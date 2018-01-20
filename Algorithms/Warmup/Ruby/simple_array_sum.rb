#!/bin/ruby

def simpleArraySum(n, ar)
  sum = 0
  ar.map { |i| sum += i}
  sum
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = simpleArraySum(n, ar)
puts result
