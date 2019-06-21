class Plant < ApplicationRecord
  belongs_to :garden
  belongs_to :users
  has_many :comments
end
