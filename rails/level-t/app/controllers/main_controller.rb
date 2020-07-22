require("devise") # for authentication
require("excon") # for Nominatim fetching
require("json")

class MainController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @links = Link.all
  end

  def create
    l = Link.create title: params[:title], body: "https://#{params[:body]}", author: params[:author], user: current_user
    redirect_to '/main/index'
  end

  def address
    @lat = current_user.lat
    @lon = current_user.lon
  end

  def set_address
    request = "https://nominatim.openstreetmap.org/search?q=#{params[:number]}+#{params[:street]},+#{params[:city]}&
    format=json&polygon_geojson=1&addressdetails=1"
    response = JSON.parse Excon.get(request).body
    if response != []
      @address_updated = true
      current_user.update :lat => response.first["lat"].to_f, :lon => response.first["lon"].to_f
    end
    render :address
  end
end
