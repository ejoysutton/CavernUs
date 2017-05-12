class Mine < ApplicationRecord
  has_many :trips
  has_many :posts

  geocoded_by :address
  after_validation :geocode
end
