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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
