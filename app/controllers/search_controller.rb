class SearchController < ApplicationController
  def index
    @booking = Booking.new
  end

  def search

    if params[:booking].nil?
      @bookings = []
    else
      byebug
      @bookings = Booking.search query:{query_string:{fields: ["number_of_guests"], query: "2" }}, size: 2, sort:{id:{order: "asc"}}
    end
  end

end
