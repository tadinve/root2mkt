class AddColumnGmapsToCommodities < ActiveRecord::Migration
  def change
    add_column :commodities, :gmaps, :boolean

  end
end
