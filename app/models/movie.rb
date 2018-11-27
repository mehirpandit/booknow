class Movie < ApplicationRecord
   validates :name, presence: true, length: { maximum: 50 }

   validates :category, presence: true, length: { maximum: 50 }

   has_many :bookings

   has_many :show_times

   mount_uploader :avatar, AvatarUploader
   
end
