# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  read        :boolean
#  not_type    :string
#  from_id     :integer
#  to_id       :integer
#  question_id :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Notification < ActiveRecord::Base
  belongs_to :from, :class_name => "User"
  belongs_to :to, :class_name => "User"
  belongs_to :question
end
