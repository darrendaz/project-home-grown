class Garden < ApplicationRecord
  has_many :user_gardens, class_name: "UserGardens"
  has_many :users, through: :user_gardens
  has_many :plants
  has_many :comments, through: :plants
  validates :name, presence: true
  validates :start_date, presence: true

  def self.from_user(user_id)
    Garden.joins(:users).where(users: {id: user_id})
  end

end
