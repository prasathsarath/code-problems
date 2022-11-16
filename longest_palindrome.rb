# Problem: https://leetcode.com/problems/longest-palindrome/

# Solution:

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  count_hash = {}
  s.chars.each do |c|
    unless count_hash.key?(c)
      count_hash[c] = 1
    else
      count_hash[c] += 1
    end
  end
  result = 0
  count_hash.values.each do |count_val|
    result  = result + (count_val/2 * 2)
    result = result + 1 if (result % 2 == 0) && (count_val % 2 == 1)
  end
  result
end