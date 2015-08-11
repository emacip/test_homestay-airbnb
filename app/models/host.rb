# == Schema Information
#
# Table name: hosts
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  picture_url :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Host < ActiveRecord::Base
  has_many :rooms
end
