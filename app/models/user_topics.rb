# == Schema Information
#
# Table name: user_topics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :string
#  topic_id   :string
#

class UserTopics < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
end
