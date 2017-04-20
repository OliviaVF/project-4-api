class Pylon < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :category
  scope :for_user, lambda{ |user| where(:user_id => user.id) }
  scope :of_followed_users, -> (following_users) { where user_id: following_users }
end
