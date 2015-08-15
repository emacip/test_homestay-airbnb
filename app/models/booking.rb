# == Schema Information
#
# Table name: bookings
#
#  id               :integer          not null, primary key
#  room_id          :integer
#  start_date       :date
#  end_date         :date
#  number_of_guests :integer
#  created_at       :datetime
#  updated_at       :datetime
#


class Booking < ActiveRecord::Base
  include SercheableBooking
  belongs_to :room
end
