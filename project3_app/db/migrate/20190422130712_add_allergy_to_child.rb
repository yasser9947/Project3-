class AddAllergyToChild < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :Allergy, :string
  end
end
