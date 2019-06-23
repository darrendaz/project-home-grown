class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :strain
      t.string :type
      t.string :sex
      t.integer :time_until_harvest
      t.belongs_to :garden 
      t.timestamps
    end
  end
end
