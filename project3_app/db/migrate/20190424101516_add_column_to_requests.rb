class AddColumnToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :age2, :integer
    add_column :requests, :age3, :integer
    add_column :requests, :age4, :integer
  end
end
