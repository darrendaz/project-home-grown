class RemoveUserIdAndPlantIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id
    remove_column :comments, :plant_id
  end
end
