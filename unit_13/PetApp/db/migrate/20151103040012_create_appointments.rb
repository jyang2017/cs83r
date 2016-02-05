class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :PetName
      t.string :Owner
      t.string :PetWalker
      t.date :ApptDate
      t.integer :ApptLength

      t.timestamps
    end
  end
end
