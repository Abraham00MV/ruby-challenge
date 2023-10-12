
=begin
This method evaluates whether  the input depth value is included within
the established depth ranges for classification and return an integer
=end

def depth_level_index(depth)
  return 3 if depth >= 0 && depth <= 9.83
  return 2 if depth >= 9.84 &&  depth <= 19.68
  return 1 if depth >= 19.69 && depth <= 39.37
  0 #return the better level
end
