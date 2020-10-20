class RenameUsernameColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :remember_username, :remember_name
  end
end
