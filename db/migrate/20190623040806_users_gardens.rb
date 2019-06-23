class UsersGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :users_gardens do |t|
      t.belongs_to :garden
      t.belongs_to :user
      t.timestamps
    end
  end
end
