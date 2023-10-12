=begin
this method evaluates the depth level and precipitation level when
they are the same to provide a final result message.
=end

def same_classification(result, lv_p, lv_d)
  return result[0] if lv_p == 0 && lv_d == 0
  return result[1] if lv_p == 1 && lv_d == 1
  return result[2] if lv_p == 2 && lv_d == 2
  return result[3] if lv_p == 3 && lv_d == 3
end
