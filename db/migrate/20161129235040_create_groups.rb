class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :email
      t.integer :level
      t.string :location
      t.string :bio
    end
  end
end
