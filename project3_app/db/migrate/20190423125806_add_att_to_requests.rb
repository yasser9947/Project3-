class AddAttToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :age, :integer
    add_column :requests, :date, :datetime
    add_column :requests, :allergies, :string
    add_column :requests, :gender, :string
    add_column :requests, :explainsituation, :string
    add_column :requests, :note, :string
  end
end
