# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#
class Post < ApplicationRecord
  validates(:title, presence: true)
  validates(:body, presence: true)
  validates(:expires_on, presence: true)
  
  # Add association to user
  belongs_to :user, optional: true
  belongs_to :board
end
