class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :username, :string, null: false
    add_column :users, :description, :text, null: false
  end
end
