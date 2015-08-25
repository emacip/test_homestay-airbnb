class SearchController < ApplicationController
  def index
    @booking = Booking.new

    if params[:booking].nil? || params[:booking][:number_of_guests].blank? || params[:booking][:start_date].blank? || params[:booking][:end_date].blank?
      @bookings = []
    else
      #@rooms_available = Room.including_ids(Booking.all.map(&:room_id))
      @unaveilable = (Booking.search filter:{or:[{range:{number_of_guests:{gt: params[:booking][:number_of_guests] }}},
                                                  {range:{start_date:{gte: params[:booking][:start_date].to_date.strftime("%Y-%m-%d")}}},
                                                  {range:{end_date:{lte: params[:booking][:end_date].to_date.strftime("%Y-%m-%d")}}}
                                                ]
                                  },size: 2001, sort:{room_id:{order: "asc"}}).to_a
      @bookings = Room.excluding_ids(@unaveilable.map(&:room_id)).paginate(:page => params[:page], :per_page => 20)
    end
  end
end
