# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  host_id    :integer
#  capacity   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Room < ActiveRecord::Base
  include SercheableRoom
  belongs_to :host
  has_many :bookings
end
