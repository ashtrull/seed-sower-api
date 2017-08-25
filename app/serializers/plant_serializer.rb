class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :indoor_start, :growth_period, :outdoor_start
end
