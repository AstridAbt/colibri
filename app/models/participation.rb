class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  scope :past, -> { where("? > ending_date", Date.today)}
  scope :current, -> { where("? BETWEEN starting_date AND ending_date", Date.today)}
end
