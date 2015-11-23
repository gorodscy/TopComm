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

class AdsList < ActiveRecord::Base
	belongs_to :User
	has_and_belongs_to_many :Advertisements

	before_save :generate_code

	def generate_code
		self.Code = loop do
			random_code = SecureRandom.urlsafe_base64(nil, false)
			break random_code unless AdsList.exists?(Code: random_code)
		end
	end
end
