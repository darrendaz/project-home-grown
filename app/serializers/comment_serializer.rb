class CommentSerializer < ActiveModel::Serializer
  attributes :id, :contents, :plant_id, :user_id

  belongs_to :plant
  belongs_to :user
end
