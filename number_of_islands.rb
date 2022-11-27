#!/usr/bin/env ruby

# Problem Link: https://leetcode.com/problems/number-of-islands/
#
# Solution:
# --------
#
# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  i = 0
  count = 0
  loop do
    break if i == grid.length
    j = 0
    loop do
      break if j == grid[i].length
      if grid[i][j] == "1"
        count = count + 1
        explore(grid, i, j)
      end
      j = j + 1
    end
    i = i + 1
  end
  count
end

def neighbours(grid, i, j)
  result = []
  result << [i-1, j] if i > 0
  result << [i+1, j] if (i + 1) < grid.length
  result << [i, j-1] if j > 0
  result << [i, j+1] if (j + 1) < grid[i].length
  result
end



def explore(grid, i, j)
  return if grid[i][j] == "0"
  grid[i][j] = "-1"
  neighbours(grid, i, j).each do |neighbour|
    explore(grid, neighbour.first, neighbour.last) if grid[neighbour.first][neighbour.last] != "-1"
  end
end
