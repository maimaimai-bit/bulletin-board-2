# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  
  # Add association to user
  belongs_to :user, optional: true
end
