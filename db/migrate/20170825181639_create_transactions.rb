class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.text :name
      t.integer :indoor_start
      t.integer :growth_period
      t.integer :outdoor_start
      t.string :plantnote

      t.timestamps
    end
  end
end
