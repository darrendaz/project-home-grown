class GardensPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens_plants do |t|
      t.belongs_to :garden
      t.belongs_to :plant
      t.timestamps
    end
  end
end
