class AddLatitudeAndLongitudeToCommodity < ActiveRecord::Migration
  def change
    add_column :commodities, :latitude, :float

    add_column :commodities, :longitude, :float

  end
end
