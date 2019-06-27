class Garden < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :plants
  has_many :comments, through: :plants
end
