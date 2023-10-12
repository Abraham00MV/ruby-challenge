require_relative 'depth_ranges'
require_relative 'preci_ranges'
require_relative 'show_classification'

CLASSIFICATION = ["Highly suitable", "Moderately suitable", "Marginally suitable", "Unsuitable"]

#input values 
puts " Enter the precipitation : "
precipitation = gets.chomp.to_f

puts "Enter the depth : "
depth = gets.chomp.to_f

#depth & precipitation levels 
depth_level = depth_level_index(depth)
precipitation_level = precipitation_level_index(precipitation)

#Clasification result :
puts show_classification(CLASSIFICATION,precipitation_level,depth_level)