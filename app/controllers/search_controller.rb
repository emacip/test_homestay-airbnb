class SearchController < ApplicationController
  def index
    @booking = Booking.new
  end

  def search

    if params[:booking].nil?
      @bookings = []
    else
      #@rooms_available = Room.including_ids(Booking.all.map(&:room_id))
      @bookings = (Booking.search filter:{range:{number_of_guests:{gt: params[:booking][:number_of_guests] }}}, sort:{id:{order: "asc"}}).records.to_a
      @results  =  Room.excluding_ids(@bookings.map(&:room_id)).limit(6)
    end
  end

end

