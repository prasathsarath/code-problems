# Problem Link: https://leetcode.com/problems/find-pivot-index/?envType=study-plan&id=level-1

# Solution:

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  left = []
  right = []
  nums.each_index do |i|
      if i == 0
          left[i] = nums[i]
      else
          left[i] = left[i-1] + nums[i]
      end
  end
  
  i = nums.length - 1
  loop do
      break if i < 0
      if i == (nums.length - 1)
          right[i] = nums[i]
      else
          right[i] = nums[i] + right[i+1]
      end
      i = i - 1
  end
  i = 0
  loop do 
      break if i == nums.length
      if right[i] == left[i]
          return i
      end
      i = i + 1
  end
  -1
end