class CreateJoinTableUsersGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :users_gardens do |t|
      t.belongs_to :user, index: true
      t.belongs_to :garden, index: true
    end
  end
end
