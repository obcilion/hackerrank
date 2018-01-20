# https://www.hackerrank.com/challenges/mini-max-sum/problem
#!/bin/ruby

def miniMaxSum(arr)
  arr.sort!

  min = 0
  (0..3).each do |i|
    min += arr[i]
  end

  max = 0
  ((arr.size - 4)..(arr.size - 1)).reverse_each do |i|
    max += arr[i]
  end

  print "#{min} #{max}"
  nil
end

arr = gets.strip
arr = arr.split(' ').map(&:to_i)
miniMaxSum(arr)
