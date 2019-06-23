class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  # has_many :plants
  # has_many :gardens, through: :plants
end
