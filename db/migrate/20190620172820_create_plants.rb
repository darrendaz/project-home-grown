class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :strain
      t.string :type
      t.string :sex
      t.text :notes
      t.integer :time_until_harvest
      t.datetime :date_planted
      t.datetime :date_harvested
      t.integer :garden_id
      t.timestamps
    end
  end
end
