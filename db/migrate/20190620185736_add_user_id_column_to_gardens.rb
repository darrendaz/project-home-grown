class AddUserIdColumnToGardens < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :user_id, :integer
  end
end
