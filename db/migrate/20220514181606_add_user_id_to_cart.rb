class AddUserIdToCart < ActiveRecord::Migration[6.1]
  def change
    add_reference :carts, :user, index: true
    add_reference :carts, :boat, index: true
  end
end
