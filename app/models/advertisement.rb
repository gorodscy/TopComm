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

class Advertisement < ActiveRecord::Base
	has_and_belongs_to_many :ads_lists
	belongs_to :user
end
