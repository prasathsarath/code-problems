#!/usr/bin/env ruby
#
# Problem Link: https://leetcode.com/problems/climbing-stairs/description/

# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
#
# Solution:
# ----------

# @param {Integer} n
# @return {Integer}

def climb_stairs(n)
  dp = Array.new(n, -1)
  climb_stairs_helper(n, dp)
end

def climb_stairs_helper(n, dp)
  return n if n <= 1 || n == 2
  if dp[n-1] == -1
    dp[n-1] = climb_stairs_helper(n-1, dp) + climb_stairs_helper(n-2, dp)
  end
  dp[n-1]
end
