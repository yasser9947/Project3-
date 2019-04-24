class RemoveUserIdFromRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :user_id, :integer
  end
end
