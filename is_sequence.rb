# Problem Link - https://leetcode.com/problems/is-subsequence/?envType=study-plan&id=level-1

# Solution:

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  t_hash = {}
  return false if s.length > t.length
  t.length.times do |i|
    unless t_hash.key? t[i]
      t_hash[t[i]] = [i]
    else
      t_hash[t[i]] << i
    end
  end
  last_found_index = t.length
  i = s.length - 1
  loop do
    break if i < 0
    return false unless t_hash.key?(s[i])
    
    found_index = t_hash[s[i]].pop
    
    t_hash.delete(s[i]) if t_hash[s[i]].length == 0
    if found_index < last_found_index
      last_found_index = found_index 
    else
      return false
    end
    i = i - 1
  end
  true
end