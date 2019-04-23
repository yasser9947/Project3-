class AddColumnToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :user_id, :integer
  end
end
