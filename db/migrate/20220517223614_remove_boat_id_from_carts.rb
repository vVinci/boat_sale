class RemoveBoatIdFromCarts < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :boat_id
  end
end
