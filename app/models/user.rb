# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :gardens, dependent: :destroy
  has_many :plants, through: :gardens
end
