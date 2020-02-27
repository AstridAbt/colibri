class Review < ApplicationRecord
  belongs_to :participation
  has_one :user, through: :participation
end
