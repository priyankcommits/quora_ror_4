class CreateUserProfile < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :user_name
      t.string :sex
      t.string :image_url
      t.string :website
      t.string :status
    end
  end
end
