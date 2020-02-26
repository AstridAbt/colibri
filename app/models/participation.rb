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
    new_quest_point = self.quest.points.to_i
    updated_score = self.user.score.to_i + new_quest_point

    user.update(score: updated_score)
  end
end
