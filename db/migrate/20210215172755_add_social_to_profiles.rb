class AddSocialToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :socials, :profile
  end
end
