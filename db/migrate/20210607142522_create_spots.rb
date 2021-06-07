class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.boolean :stairset
      t.boolean :ledge
      t.boolean :cover
      t.boolean :flatground
      t.integer :security
      t.string :location
      t.references :skater, null: false, foreign_key: true

      t.timestamps
    end
  end
end
