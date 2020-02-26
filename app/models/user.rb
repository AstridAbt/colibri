class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :carbone_print
  has_many :participations, dependent: :destroy

  validates_presence_of :username
  validates_uniqueness_of :username
end
