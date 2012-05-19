class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :commodity_name
      t.string :variety
      t.float :temp_low
      t.float :temp_high
      t.float :lat1
      t.float :lat2
      t.integer :elevation_low
      t.integer :elevation_high
      t.string :soil_type
      t.float :soil_min
      t.float :soil_high
      t.string :sunlight
      t.string :best_season
      t.integer :water_min
      t.integer :water_max
      t.float :nutritional_value

      t.timestamps
    end
  end
end
