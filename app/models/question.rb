# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :string
#  isactive   :boolean
#  isspam     :boolean
#  image_url  :string
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  topic_id   :integer
#

class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :answers
  validates :text, :presence => true
end
