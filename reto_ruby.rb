# reto_ruby

CLASSIFICATION = ["Highly suitable", "Moderately suitable", "Marginally suitable", "Unsuitable"]

#input values 
puts " Enter the precipitation : "
precipitation = gets.chomp.to_f

puts "Enter the depth : "
depth = gets.chomp.to_f

#depth & precipitation ranges

unsuitable_depth = (0..9.83).include?(depth)
marginal_depth = (9.84..19.68).include?(depth)
moderate_depth = (19.69..39.37).include?(depth)
suitable_depth = depth > 39.37 

unsuitable_precipitation = precipitation < 4.0 || precipitation > 12.5
marginal_precipitation = (10.5..12.5).include?(precipitation) || (4.0..4.99).include?(precipitation)
moderate_precipitation = (8.5..10.4).include?(precipitation)|| (5.0..5.9).include?(precipitation)
suitable_precipitation = (6.0..8.4).include?(precipitation) 

# Equal classification
puts CLASSIFICATION[0] if suitable_precipitation && suitable_depth 
puts CLASSIFICATION[1] if moderate_precipitation && moderate_depth
puts CLASSIFICATION[2] if marginal_precipitation && marginal_depth
puts CLASSIFICATION[3] if unsuitable_precipitation && unsuitable_depth

#Different classification ( it takes the worst classification )

# since depth :

#suitable depth comparison :
puts CLASSIFICATION[1] if suitable_depth && moderate_precipitation
puts CLASSIFICATION[2] if suitable_depth && marginal_precipitation
puts CLASSIFICATION[3] if suitable_depth && unsuitable_precipitation

#moderate depth comparison :
puts CLASSIFICATION[2]   if moderate_depth && marginal_precipitation
puts CLASSIFICATION[3]   if moderate_depth && unsuitable_precipitation

#marginal depth comparison :
puts CLASSIFICATION[3] if marginal_depth && unsuitable_precipitation

#since precipitation : 

#suitable precipitation comparison :
puts CLASSIFICATION[1] if suitable_precipitation && moderate_depth
puts CLASSIFICATION[2] if suitable_precipitation && marginal_depth
puts CLASSIFICATION[3] if suitable_precipitation && unsuitable_depth

#moderate precipitation comparison :
puts CLASSIFICATION[2] if moderate_precipitation && marginal_depth
puts CLASSIFICATION[3] if moderate_precipitation && unsuitable_depth

#marginal precipitation comparison :
puts CLASSIFICATION[3]   if marginal_precipitation && unsuitable_depth