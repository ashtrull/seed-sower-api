class GardenSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :plant_id, :notes, :plant_name
end
