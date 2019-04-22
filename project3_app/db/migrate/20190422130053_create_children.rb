class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :num
      t.datetime :date

      t.timestamps
    end
  end
end
