class Quest < ApplicationRecord
  has_one_attached :photo

  def truncate_content
    content[0, 60] + "..."
  end

end
