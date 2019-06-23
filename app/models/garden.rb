class Garden < ApplicationRecord

  has_many :user_gardens, class_name: "UserGardens"
  has_many :users, through: :user_gardens
  has_many :gardens_plant, class_name: "GardensPlant"
  has_many :plants, through: :gardens_plant
  has_many :comments, through: :plants
end
