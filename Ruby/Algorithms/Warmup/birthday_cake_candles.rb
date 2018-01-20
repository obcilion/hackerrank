#!/bin/ruby
# https://www.hackerrank.com/challenges/birthday-cake-candles/problem

def birthdayCakeCandles(n, ar)
  ar.sort!.reverse!
  count = 0

  ar.each do |i|
    break unless i == ar[0]
    count += 1
  end
  count
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result
