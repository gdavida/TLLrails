class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name
      t.string :upc
      t.integer :age_group_id
      t.integer :box_id
      t.integer :pieces

      t.timestamps null: false

    end
  end
end
