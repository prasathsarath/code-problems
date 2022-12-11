#!/usr/bin/env ruby

# Problem Link: https://leetcode.com/problems/min-cost-climbing-stairs/description/?envType=study-plan&id=level-1
#
#
# Solution:
# ---------
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  min_cost_helper(cost)
end

def min_cost_helper(cost)
  last_step_cost = 0
  penulti_step_cost = 0
  return cost.min if cost.length <= 2
  (0..cost.length).each_with_index do |_cost_val, i|
    next if i < 2
    temp = last_step_cost
    last_step_cost = [(last_step_cost + cost[i-1]), (penulti_step_cost + cost[i-2])].min
    penulti_step_cost = temp
  end
  last_step_cost
end
