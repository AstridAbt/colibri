class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :carbone_print
  has_many :participations

  validates_presence_of :username
  validates_uniqueness_of :username

  # def set_score
  #   @past_participations = current_user.participations.past
  #   cumul_points_past_quests = 0
  #   @past_participations.each do |participation|
  #     cumul_points_past_quests =+ participation.quest.points
  #   end
  #   user.score = cumul_points_past_quests
  # end

end
