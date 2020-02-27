class Participation < ApplicationRecord
  # Relations
  #
  belongs_to :user
  belongs_to :quest
  has_many :reviews, dependent: :destroy
  after_create :set_carbone_print

  # Scopes
  #
  scope :pasted, lambda { where.not(end_date: nil)}
  scope :currents, lambda { where(end_date: nil)}

  # List of actions to trigger when user finish quest
  #
  def finish_quest
    increment_user_score
    increment_user_carbone_print
  end

  private

  def set_carbone_print
    CarbonePrint.create(user: user, quest: quest)
  end

  def increment_user_score
    new_quest_point = self.quest.points.to_i
    updated_score = self.user.score.to_i + new_quest_point

    user.update(score: updated_score)
  end

  def increment_user_carbone_print
    new_quest_foot_print = quest.points.to_i / 10
    updated_foot_print = self.user.foot_print.to_i - new_quest_foot_print

    user.update(foot_print: updated_foot_print)
  end

end
