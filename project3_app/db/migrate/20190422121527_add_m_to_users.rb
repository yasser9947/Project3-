class AddMToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :area, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :experience, :string
    add_column :users, :description, :string
  end
end
