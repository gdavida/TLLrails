class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string  :name, null: false
      t.string  :upc
      t.string  :toy_image
      t.integer :age_group_id
      t.integer :box_id
      t.integer :pieces, null: false
      t.string  :manufacturer
      t.string  :price
      t.string  :purchased_from
      t.string  :country_of_origin

      t.timestamps null: false

    end
  end
end
