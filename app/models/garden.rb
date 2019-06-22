class Garden < ApplicationRecord
  belongs_to :user
  has_many :plants
  has_many :comments, through: :plants
end
