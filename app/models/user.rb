# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  uid              :string
#  name             :string
#  provider         :string
#  oauth_token      :string
#  oauth_expires_at :datetime
#

class User < ActiveRecord::Base
  has_one :user_profile
  has_many :questions
  has_many :answers
  has_many :topics, :through => :user_topics

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      user_profile = UserProfile.where(uid: user.id).first_or_create
      user_profile.user_name = auth.info.name
      user_profile.save!
    end
  end
end
