class AddUserIdTopicIdToUserTopics < ActiveRecord::Migration
  def change
    add_column :user_topics, :user_id, :string
    add_column :user_topics, :topic_id, :string
  end
end
