class RemoveLinkedinFromProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :linkedin, :string
  end
end
