
=begin
This method evaluates whether  the input depth value is included within
the established depth ranges for classification and return an integer
=end

def depth_ranges(dpt, d_level)
  return d_level= 0 if dpt > 39.37
  return d_level= 1 if (19.69..39.37).include?(dpt)
  return d_level= 2 if (9.84..19.68).include?(dpt)
  return d_level= 3 if (0..9.83).include?(dpt)
end

#d_level it refers to a classification level
