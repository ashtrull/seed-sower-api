# frozen_string_literal: true

class Garden < ApplicationRecord
  belongs_to :user
  has_one :plant
  validates_uniqueness_of :user_id, :scope => :plant_id
end
