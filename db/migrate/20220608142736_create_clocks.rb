class CreateClocks < ActiveRecord::Migration[7.0]
  def change
    create_table :clocks do |t|
      t.string :name
      t.string :description
      t.integer :sections
      t.integer :marked

      t.timestamps
    end
  end
end
