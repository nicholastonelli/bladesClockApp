class CreateFactions < ActiveRecord::Migration[7.0]
  def change
    create_table :factions do |t|
      t.string :name
      t.string :description
      t.integer :tier
      t.string :hold
      t.string :turf
      t.string :assets
      t.string :quirks
      t.string :situation

      t.timestamps
    end
  end
end
