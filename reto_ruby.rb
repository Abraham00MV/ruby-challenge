require_relative 'depth_ranges'
require_relative 'preci_ranges'
require_relative 'diff_classif'
require_relative 'same_classif'

CLASSIFICATION = ["Highly suitable", "Moderately suitable", "Marginally suitable", "Unsuitable"]

#input values 
puts " Enter the precipitation : "
precipitation = gets.chomp.to_f

puts "Enter the depth : "
depth = gets.chomp.to_f

#depth & precipitation ranges
depth_level = depth_ranges(depth, depth_level)
precipitation_level = precipitation_ranges(precipitation, precipitation_level)

#Clasification result :
if depth_level == precipitation_level
puts same_classification(CLASSIFICATION,precipitation_level, depth_level)
end

if depth_level != precipitation_level
puts different_classification(CLASSIFICATION,depth_level, precipitation_level)
end