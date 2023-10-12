=begin
This method evaluates whether  the input precipitation value is included within
the established depth ranges for classification and return an integer
=end

def precipitation_level_index(precipitation)
  return  0 if precipitation >= 6.0 && precipitation <= 8.4
  return  1 if precipitation >= 8.5 && precipitation <= 10.4 || precipitation >= 5.0 && precipitation <= 5.9
  return  2 if precipitation >= 10.5 && precipitation <= 12.5 || precipitation >= 4.0 && precipitation <= 4.99
  3 # return the worst level
end
