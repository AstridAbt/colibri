class Quest < ApplicationRecord
  has_one_attached :photo
  has_many :participations, dependent: :destroy

  def truncate_content
    content[0, 60] + "..."
  end

end
