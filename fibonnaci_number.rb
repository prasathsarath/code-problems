#!/usr/bin/env ruby

# Problem Link: https://leetcode.com/problems/fibonacci-number/?envType=study-plan&id=level-1
#
#
# Solution:

# @param {Integer} n
# @return {Integer}

def fib(n)
  result = Array.new(30)
  result[0] = 0
  result[1] = 1
  fib_helper(result, n)
  result[n]
end

def fib_helper(result, n)
  return if n < 1

  (2..n).each do |num|
    result[num] = result[num - 1] + result[num - 2]
  end
end
