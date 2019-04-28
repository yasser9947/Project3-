class Addcolumnsfromrequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :caredom, index: true
    add_reference :requests, :caregiver, index: true
  end
end
