class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :bookings
  validates :full_name, presence: true

  def cl_photo
    if photo?
      photo
    else
      'https://alderton-jun.essex.sch.uk/staffs/primary/etchinghill/web/bg-light-681.jpg'
    end
  end
end
