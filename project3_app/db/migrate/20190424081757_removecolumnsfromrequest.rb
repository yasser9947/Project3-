class Removecolumnsfromrequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :caregiver_id, :integer
    remove_column :requests, :caredom_id, :integer
  end
end
