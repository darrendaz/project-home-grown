class Garden < ApplicationRecord
  has_many :user_gardens, class_name: "UserGardens"
  has_many :users, through: :user_gardens
  has_many :plants
  has_many :comments, through: :plants
end
