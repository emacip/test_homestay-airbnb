class SearchController < ApplicationController
  def index
    @booking = Booking.new
  end
end
