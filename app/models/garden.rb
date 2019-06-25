class Garden < ApplicationRecord
  has_many :user_gardens, class_name: "UserGardens"
  has_many :users, through: :user_gardens
  has_many :plants
  has_many :comments, through: :plants

  def self.from_user(user_id)
    Garden.joins(:users).where(users: {id: user_id})
  end

end
