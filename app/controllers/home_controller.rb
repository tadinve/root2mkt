class HomeController < ApplicationController
  def index

  end

  def search
  	if params[:address] != ""
  		#@coordinates = Geocoder.coordinates(params[:address])
      @result = Geocoder.search(params[:address])
      if @result[0]!= nil
          @address =@result[0].data['formatted_address']
          @latitude = @result[0].data['geometry']['location']['lat']
          @longitude = @result[0].data['geometry']['location']['lng']
          lat = @latitude
      else
        flash[:notice] ="No data found"
      end
  	else
      ip = request.ip
      if ip == "127.0.0.1"
  		  address = "183.83.16.101"
      else
        address = ip 
      end 
      @result = Geocoder.search(address)
      @address = @result[0].data['city'] + "," + @result[0].data['region_name'] + "," + @result[0].data['country_name']
      @latitude = @result[0].data['latitude']
      @longitude = @result[0].data['longitude']
      lat = @result[0].data['latitude']
  	end
  	#@crops = Commodity.where(:lat1 => ( lat.to_f.round(0).to_f..lat.to_f.round(1))) unless lat.blank?
    @crops = Commodity.where("lat2 <= ? and lat1 >= ? ",lat,lat) unless lat.blank?
  end


  def my_list
  	@list = List.all
  end	


end
