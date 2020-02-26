class Participation < ApplicationRecord
  # Relations
  #
  belongs_to :user
  belongs_to :quest

  # Scopes
  #
  scope :pasted, lambda { where.not(end_date: nil)}
  scope :currents, lambda { where(end_date: nil)}
end
