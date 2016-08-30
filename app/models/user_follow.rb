# == Schema Information
#
# Table name: user_follows
#
#  id           :integer          not null, primary key
#  follower_id  :integer
#  following_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class UserFollow < ActiveRecord::Base
  belongs_to :follower, :class_name => "User"
  belongs_to :following, :class_name => "User"
end
