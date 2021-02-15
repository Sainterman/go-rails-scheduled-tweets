class ChangeUsersToProfiles < ActiveRecord::Migration[6.1]
  def change
    rename_table :users, :profiles
  end
end
