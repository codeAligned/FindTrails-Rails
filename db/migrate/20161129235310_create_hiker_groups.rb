class CreateHikerGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :hiker_groups do |t|
      t.integer :hiker_id
      t.integer :group_id
    end
  end
end
