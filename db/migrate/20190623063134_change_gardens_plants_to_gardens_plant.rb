class ChangeGardensPlantsToGardensPlant < ActiveRecord::Migration[5.2]
  def change
    rename_table :gardens_plants, :gardens_plant
  end
end
