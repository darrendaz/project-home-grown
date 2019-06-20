class DeleteUserIdColumnFromGardens < ActiveRecord::Migration[5.2]
  def change
    remove_column :gardens, :user_id
  end
end
