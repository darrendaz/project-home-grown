class ChangeUsersGardensToUserGardens < ActiveRecord::Migration[5.2]
  def change
    rename_table :users_gardens, :user_gardens
  end
end
