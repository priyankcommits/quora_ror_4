# == Schema Information
#
# Table name: user_profiles
#
#  id        :integer          not null, primary key
#  user_name :string
#  sex       :string
#  image_url :string
#  website   :string
#  status    :string
#  uid       :string
#

class UserProfile < ActiveRecord::Base
  has_one :user
end
