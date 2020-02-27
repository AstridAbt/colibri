class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :carbone_print, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :quests, through: :participations, dependent: :destroy
  has_many :reviews, through: :participations, dependent: :destroy


  validates_presence_of :username
  validates_uniqueness_of :username

end
