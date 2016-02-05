class RemoveMailingaddressFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :mailingaddress, :string
  end
end
