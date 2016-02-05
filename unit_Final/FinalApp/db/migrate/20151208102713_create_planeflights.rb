class CreatePlaneflights < ActiveRecord::Migration
  def change
    create_table :planeflights do |t|
      t.references :plane, index: true
      t.string :airline
      t.integer :number
      t.string :fromcity
      t.string :tocity

      t.timestamps
    end
  end
end
