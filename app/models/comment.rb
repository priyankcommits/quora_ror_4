# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :string
#  isactive   :boolean
#  ispam      :boolean
#  created_at :datetime
#  updated_at :datetime
#  answer_id  :integer
#  user_id    :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  validates :text, :presence => true
end
