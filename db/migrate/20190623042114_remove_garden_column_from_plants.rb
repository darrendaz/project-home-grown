class RemoveGardenColumnFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :garden
  end
end