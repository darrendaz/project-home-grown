class GardenSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :plants

  has_many :plants
end
