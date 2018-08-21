class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ["Transport", "Accommodation", "Clothing", "Miscellaneous"] }
end
