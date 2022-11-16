# Problem Link : https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1

# Solution:

# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  result = 0
  nums.each_index do |i|
      result = result + nums[i]
      nums[i] = result
  end
  nums
end