class AddAgeGroupIdToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :age_group_id, :integer, null:false
  end
end
