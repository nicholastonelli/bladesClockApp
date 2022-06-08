class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :description
      t.string :playbook
      t.string :heritage
      t.string :background

      t.timestamps
    end
  end
end
