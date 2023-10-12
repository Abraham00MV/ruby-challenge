=begin
this method evaluates the depth level and precipitation level when
they are differents to provide a final result message.
=end

def different_classification(clsf,lvl_d,lvl_p)
  #depth level classification
  return clsf[1] if lvl_d == 0 && lvl_p == 1
  return clsf[2] if lvl_d == 0 && lvl_p == 2
  return clsf[3] if lvl_d == 0 && lvl_p == 3
  return clsf[2] if lvl_d == 1 && lvl_p == 2
  return clsf[3] if lvl_d == 1 && lvl_p == 3
  return clsf[3] if lvl_d == 2 && lvl_p == 3
  #precipitation level classification
  return clsf[1] if lvl_p == 0 && lvl_d == 1
  return clsf[2] if lvl_p == 0 && lvl_d == 2
  return clsf[3] if lvl_p == 0 && lvl_d == 3
  return clsf[2] if lvl_p == 1 && lvl_d == 2
  return clsf[3] if lvl_p == 1 && lvl_d == 3
  return clsf[3] if lvl_p == 2 && lvl_d == 3
end
