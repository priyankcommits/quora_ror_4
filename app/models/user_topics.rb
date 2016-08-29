# == Schema Information
#
# Table name: user_topics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class UserTopics < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users
  belongs_to :topics
end
