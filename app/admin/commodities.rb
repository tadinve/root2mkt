ActiveAdmin.register Commodity do
	index do 
		column    :commodity_name
    column    :variety
    column    :temp_low
    column    :temp_high
    column    :lat1
    column    :lat2
    column    :elevation_low
    column    :elevation_high
    column    :soil_type
    column    :soil_min
    column    :soil_high
    column    :sunlight
    column    :best_season
    column    :water_min
    column    :water_max
    column    :nutritional_value
    default_actions
	end
  
end
