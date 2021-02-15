class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest
      t.string :email, null: false
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end
