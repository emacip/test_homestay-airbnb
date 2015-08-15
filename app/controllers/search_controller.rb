class SearchController < ApplicationController
  def index
    @booking = Booking.new
  end

  def search
    byebug
    hello
  end

end
