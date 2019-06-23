class RemoveGardenColumnFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :garden_id

    remove_column :gardens, :user_id

  end
end