class Plant < ApplicationRecord
  has_many :gardens_plant, class_name: "GardensPlant"
  has_many :gardens, through: :gardens_plant
  has_many :comments
  has_many :users, through: :comments
end
