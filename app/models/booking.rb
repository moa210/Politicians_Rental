class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates_presence_of :date_from, :date_to
end
