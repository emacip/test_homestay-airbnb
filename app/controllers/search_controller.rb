class SearchController < ApplicationController
  def index
    @booking = Booking.new
    if params[:booking].nil?
      @bookings = []
    else
      #@rooms_available = Room.including_ids(Booking.all.map(&:room_id))
      @bookings = (Booking.search filter:{range:{number_of_guests:{gt: params[:booking][:number_of_guests] }}}, sort:{room_id:{order: "asc"}}).records.to_a
      @bookings = Room.excluding_ids(@bookings.map(&:room_id)).paginate(:page => params[:page], :per_page => 20)
    end
  end
end

