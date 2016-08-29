class AddUserIdToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :uid, :string
  end
end
