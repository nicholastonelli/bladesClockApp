class CreateCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :tier
      t.string :hold
      t.string :reputation
      t.integer :rep

      t.timestamps
    end
  end
end
