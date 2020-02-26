class Participation < ApplicationRecord
  # Relations
  #
  belongs_to :user
  belongs_to :quest

  # Scopes
  #
  scope :pasted, lambda { where.not(end_date: nil)}
  scope :currents, lambda { where(end_date: nil)}

  def increment_user_score
    new_quest_point = quest.points
    updated_score = user.score + new_quest_point

    user.update(score: updated_score)
  end
end
