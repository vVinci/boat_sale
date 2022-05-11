class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :price
      t.boolean :status

      t.timestamps
    end
  end
end
