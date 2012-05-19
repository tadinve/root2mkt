# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :commodity do
    commodity_name "MyString"
    variety "MyString"
    temp_low 1.5
    temp_high 1.5
    lat1 1.5
    lat2 1.5
    elevation_low 1
    elevation_high 1
    soil_type "MyString"
    soil_min 1.5
    soil_high 1.5
    sunlight "MyString"
    best_season "MyString"
    water_min 1
    water_max 1
    nutritional_value 1.5
  end
end
