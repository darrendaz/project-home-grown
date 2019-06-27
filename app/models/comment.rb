class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :contents, presence: true

  def set_user!(user)
    self.user_id = user.id
    self.save
  end
end
