=begin
This method evaluates whether  the input precipitation value is included within
the established depth ranges for classification and return an integer
=end

def precipitation_ranges(prec, p_level)
  return p_level = 0 if (6.0..8.4).include?(prec)
  return p_level = 1 if (8.5..10.4).include?(prec) || (5.0..5.9).include?(prec)
  return p_level = 2 if (10.5..12.5).include?(prec) || (4.0..4.99).include?(prec)
  return p_level = 3 if prec < 4.0 || prec > 12.5
end
