# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :string
#  isactive    :boolean
#  isspam      :boolean
#  image_url   :string
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  question_id :integer
#  upvotes     :integer
#

class Answer < ActiveRecord::Base
  default_scope { order 'created_at DESC' }
  belongs_to :user
  belongs_to :question
  has_many :comments
  validates :text, :presence => true
end
