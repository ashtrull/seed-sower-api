# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.text :name
      t.integer :indoor_start
      t.integer :growth_period
      t.integer :outdoor_start

      t.timestamps
    end
  end
end
