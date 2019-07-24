class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :strain, :type, :sex, :time_until_harvest, :garden_id, :comments

  belongs_to :garden
  has_many :comments
end
