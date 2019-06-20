class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
      t.integer :plant_id
      t.timestamps
    end
  end
end
