class UserTopics < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :users
  belongs_to :topics
end
