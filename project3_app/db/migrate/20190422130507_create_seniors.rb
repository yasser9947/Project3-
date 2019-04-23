class CreateSeniors < ActiveRecord::Migration[5.2]
  def change
    create_table :seniors do |t|
      t.integer :age
      t.string :gender
      t.string :explainsituation
      t.datetime :date
      t.string :note

      t.timestamps
    end
  end
end
