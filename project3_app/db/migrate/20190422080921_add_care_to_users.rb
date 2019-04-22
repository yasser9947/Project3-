class AddCareToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :care, :boolean, default: false 
  end
end
