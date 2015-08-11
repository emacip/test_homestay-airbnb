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

require 'test_helper'

class HostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
