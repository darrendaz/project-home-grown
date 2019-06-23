class Plant < ApplicationRecord
  has_many :gardens_plants
  has_many :gardens, through: :gardens_plants
  has_many :comments
  has_many :users, through: :comments
end
