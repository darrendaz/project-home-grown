class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  # has_many :plants
  # has_many :gardens, through: :plants

  validates :contents, presence: true

  def set_user!(user)
    self.user_id = user.id
    self.save
  end
end
