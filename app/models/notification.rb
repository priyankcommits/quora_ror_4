# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  type       :integer
#  read       :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Notification < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
end
