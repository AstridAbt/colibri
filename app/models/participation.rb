class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  scope :past, -> { where("? > ending_date", Date.today)}
  scope :current, -> { where("? BETWEEN starting_date AND ending_date", Date.today)}

  def increment_user_score
    new_quest_point = quest.points
    updated_score = user.score + new_quest_point

    user.update(score: updated_score)
  end
end
