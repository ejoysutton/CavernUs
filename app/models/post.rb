class Post < ApplicationRecord
  has_many :specimen
  belongs_to :user
  belongs_to :mine
end
