class DeletePlantIdColumnFromGardens < ActiveRecord::Migration[5.2]
  def change
    remove_column :gardens, :plant_id
  end
end
