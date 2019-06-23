class Garden < ApplicationRecord
  has_many :users_gardens
  has_many :users, through: :users_gardens
  has_many :gardens_plants
  has_many :plants, through: :gardens_plants
  has_many :comments, through: :plants
end
