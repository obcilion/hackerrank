#!/bin/ruby
# https://www.hackerrank.com/challenges/time-conversion/problem

def timeConversion(s)
  postfix = s.slice!(s.size-2..s.size-1)
  is_PM = postfix.eql? 'PM'
  times = s.split ':'

  if times[0] == '12' && !is_PM
    times[0] = '00'
  end

  if is_PM && times[0] != '12'
    hours = times[0].to_i
    hours += 12
    times[0] = hours.to_s
  end

  "#{times[0]}:#{times[1]}:#{times[2]}"
end

s = gets.strip
result = timeConversion(s)
puts result
