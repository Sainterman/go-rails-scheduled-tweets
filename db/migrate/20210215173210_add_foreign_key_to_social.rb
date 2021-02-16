class AddForeignKeyToSocial < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :socials, :profiles
  end
end
