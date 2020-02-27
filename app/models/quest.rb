class Quest < ApplicationRecord
  has_one_attached :photo
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
  has_many :reviews, through: :participations, dependent: :destroy


  def truncate_content
    content[0, 60] + "..."
  end
end
