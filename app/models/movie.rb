class Movie < ApplicationRecord
   validates :name, presence: true, length: { maximum: 50 }

   validates :category, presence: true, length: { maximum: 50 }

end
