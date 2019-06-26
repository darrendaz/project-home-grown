class Plant < ApplicationRecord
  belongs_to :garden
  has_many :comments
  has_many :users, through: :comments

  validates :name, presence: true
end
