class User < ApplicationRecord
  has_secure_password validations: false

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true

  # has_and_belongs_to_many :followers, class_name: "User", join_table: "friendship", foreign_key: "user_id", association_foreign_key: "follower_id"
  # has_and_belongs_to_many :following, class_name: "User", join_table: "friendship", foreign_key: "follower_id", association_foreign_key: "user_id"

  mount_uploader :image, ImageUploader
end
