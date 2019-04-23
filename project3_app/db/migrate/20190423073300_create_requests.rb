class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :caredom_id
      t.integer :caregiver_id
      t.integer :request_status

      t.timestamps
    end
  end
end
