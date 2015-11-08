# == Schema Information
#
# Table name: advertisements
#
#  id          :integer          not null, primary key
#  Title       :string
#  Description :string
#  ImageUrl    :string
#  DisplayTime :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  isVideo     :boolean          default(FALSE)
#

class Advertisement < ActiveRecord::Base
end
