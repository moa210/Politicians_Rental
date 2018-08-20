class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :days, presence: true
end
