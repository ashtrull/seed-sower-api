class AddNotesToGardens < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :notes, :string
  end
end
