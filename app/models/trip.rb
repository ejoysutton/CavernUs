class Trip < ApplicationRecord
  belongs_to :mine
  has_many :trip_members
end
