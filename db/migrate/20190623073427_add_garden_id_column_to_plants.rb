class AddGardenIdColumnToPlants < ActiveRecord::Migration[5.2]
  def change
    change_table :plants do |t|
      t.belongs_to :garden
    end
  end
end
