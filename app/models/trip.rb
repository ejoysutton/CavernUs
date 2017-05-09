class Trip < ApplicationRecord
  belongs_to :mine
  has_many :trip_members
  has_many :users, :through =>:trip_members
end
