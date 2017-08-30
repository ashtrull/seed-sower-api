class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :gardens, [ :user_id, :plant_id ], :unique => true, :name => 'by_user_and_plant'
  end
end
