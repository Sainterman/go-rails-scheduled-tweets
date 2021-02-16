class RemoveTwitterFromProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :twitter, :string
  end
end
