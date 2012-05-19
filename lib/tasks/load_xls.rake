namespace :db do
    desc "load data from excel"
    task :load_xls => :environment do
      require 'rubygems'
      require 'spreadsheet'
      Spreadsheet.client_encoding = 'UTF-8'

      xls = Spreadsheet.open 'public/data.xls'
      sheet = xls.worksheet 0
      sheet.each do |row|
        Commodity.new(
          :commodity_name => row[0],
          :variety => row[1],
          :temp_low => row[2],
          :temp_high => row[3],
          :lat1 => row[4],
          :lat2 => row[5],
          :elevation_low => row[6],
          :elevation_high => row[7],
          :soil_type => row[8],
          :soil_min => row[9],
          :soil_high => row[10],
          :sunlight => row[11],
          :best_season => row[12],
          :water_min => row[13],
          :water_max => row[14], 
          :nutritional_value => row[15]
          ).save!
      end
    end
end