class GardenSerializer < ActiveModel::Serializer
  attributes :id, :email, :garden_name, :garden_city, :garden_state
end
