class CommentSerializer < ActiveModel::Serializer
  attributes :id, :contents, :plant_id, :created_at

  belongs_to :plant
end
