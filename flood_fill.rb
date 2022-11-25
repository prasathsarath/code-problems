#!/usr/bin/env ruby

# Problem Link: https://leetcode.com/problems/flood-fill/submissions/
#
#
# Solution:

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  target_val = image[sr][sc]
  flood_fill_helper(image, sr, sc, color, target_val)
  image
end

def flood_fill_helper(image, sr, sc, color, target_val)
  return if sr == image.length || sc == image[0].length || sr < 0 || sc < 0 # checking for array boundaries
  return if image[sr][sc] != target_val || image[sr][sc] == color # checks for whether target val is there in the image or the flood fill color is already present in image
  image[sr][sc] = color
  flood_fill_helper(image, sr+1, sc, color, target_val)
  flood_fill_helper(image, sr-1, sc, color, target_val)
  flood_fill_helper(image, sr, sc + 1, color, target_val)
  flood_fill_helper(image, sr, sc - 1, color, target_val)
end
