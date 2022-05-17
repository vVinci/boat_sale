class RemoveUserIdReferenceFromBoats < ActiveRecord::Migration[6.1]
  def change
    remove_column :boats, :user_id
  end
end
