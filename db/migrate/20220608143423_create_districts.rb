class CreateDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :description
      t.string :scene
      t.string :streets
      t.string :buildings
      t.integer :wealth
      t.integer :security
      t.integer :crime
      t.integer :occult
      t.string :special

      t.timestamps
    end
  end
end
