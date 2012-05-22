class ChangeDataTypeForCommoditiesSoilType < ActiveRecord::Migration
  def up
  	change_table :commodities do |t|  
  		t.change :soil_type, :text 
		end
  end

  def down
  	change_table :commodities do |t|  
  		t.change :soil_type, :string 
		end
  end
end
