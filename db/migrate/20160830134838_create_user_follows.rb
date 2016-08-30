class CreateUserFollows < ActiveRecord::Migration
  def change
    create_table :user_follows do |t|
      t.references :follower
      t.references :following
      t.timestamps null: false
    end
  end
end
