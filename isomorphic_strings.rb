# Problem Link: https://leetcode.com/problems/isomorphic-strings/?envType=study-plan&id=level-1

# Solution:

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  return false if s.length != t.length
  
  sm_hash = {}
  tm_hash = {}
  
  s.length.times do |i|
      if !sm_hash.has_key?(s[i]) && !tm_hash.has_key?(t[i])
          sm_hash[s[i]] = t[i]
          tm_hash[t[i]] = s[i]
      elsif sm_hash[s[i]] != t[i] || tm_hash[t[i]] != s[i]
          return false
      end
  end
  
  true
end