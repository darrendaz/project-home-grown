class RemoveGardenIdFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :garden_id
  end
end
