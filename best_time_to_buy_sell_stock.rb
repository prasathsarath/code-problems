# Problem: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# Solution:

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  result = 0
  return result if prices.length <= 1
  min_price = prices[0]
  counter = 1
  loop do
    break if counter == prices.length
    if prices[counter] < min_price
      min_price = prices[counter]
    elsif (prices[counter] - min_price) > result
      result = prices[counter] - min_price
    end
    counter = counter + 1
  end
  result
end