class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user
      t.belongs_to :plant
      t.timestamps
    end
  end
end
