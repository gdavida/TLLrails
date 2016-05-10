class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.integer :toys_id
      t.integer :pieces

      t.timestamps null: false
    end
  end
end
