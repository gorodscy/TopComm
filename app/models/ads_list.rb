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
	belongs_to :user
	has_and_belongs_to_many :advertisements

	before_save :generate_code

	def generate_code
		self.code = loop do
			random_code = SecureRandom.hex(3)
			break random_code unless AdsList.exists?(code: random_code)
		end
	end
end
