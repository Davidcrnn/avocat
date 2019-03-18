class CabinetsController < ApplicationController
  def index

    @cabinets = Cabinet.where.not(latitude: nil, longitude: nil)
    @markers = @cabinets.map do |cabinet|
      {
        lng: cabinet.longitude,
        lat: cabinet.latitude
      }
    end
  end
end
