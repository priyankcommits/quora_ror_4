class CreateUserTopics < ActiveRecord::Migration
  def change
    create_table :user_topics do |t|

      t.timestamps
    end
  end
end
