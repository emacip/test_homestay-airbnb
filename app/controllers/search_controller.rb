class SearchController < ApplicationController
  def index
    @booking = Booking.new
  end

  def search
    if params[:q].nil?
      @bookings = []
    else
      @bookings = Booking.search params[:q]
    end
  end

end
