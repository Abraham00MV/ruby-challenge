#This method show the classification result

def show_classification(classification, level_precipitation, level_depth)

	if level_precipitation == level_depth
		return classification[level_precipitation] || classification[level_depth]
	end

	return classification[level_depth] if level_precipitation < level_depth
	classification[level_precipitation]

end

