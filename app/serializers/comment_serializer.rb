class CommentSerializer < ActiveModel::Serializer
  attributes :id, :contents, :plant_id

  belongs_to :plant
end
