class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, :description, :category, presence: true
  validates :category, inclusion: { in: ["accommodation", "clothing", "transport", "miscellaneous"] }

end
