class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :difficulty
      t.string :location
      t.integer :length
      t.references :hiker, foreign_key: true
      t.references :group, foreign_key: true
    end
  end
end
