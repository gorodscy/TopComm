# == Schema Information
#
# Table name: ads_lists
#
#  id           :integer          not null, primary key
#  total_profit :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  code         :string
#  description  :text
#

require 'test_helper'

class AdsListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
