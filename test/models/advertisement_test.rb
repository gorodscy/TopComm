# == Schema Information
#
# Table name: advertisements
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :string
#  url          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bid          :integer
#  min_interval :integer
#  user_id      :integer
#

require 'test_helper'

class AdvertisementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
