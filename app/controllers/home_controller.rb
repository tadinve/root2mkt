class HomeController < ApplicationController
  def index

  end

  def search
  	if params[:address] != ""
  		@coordinates = Geocoder.coordinates(params[:address])
  	else
      ip = request.ip
      if ip == "127.0.0.1"
  		  address = "183.83.16.101"
      else
        address = ip 
      end 
  		@coordinates = Geocoder.coordinates(address)
      #render :text => request.ip #@coordinates.inspect;return
  	end
  	@crops = Commodity.where(:lat1 => ( @coordinates[0].round(0).to_f..@coordinates[0].round(1))) unless @coordinates.blank?
    #@all_crops = Commodity.find_each.where
  end


  def my_list
  	@list = List.all
  end	


end
