class User < ApplicationRecord
  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true, unless: :oauth_login?, on: :create
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?, on: :create
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  # has_and_belongs_to_many :followers, class_name: "User", join_table: "friendship", foreign_key: "user_id", association_foreign_key: "follower_id"
  # has_and_belongs_to_many :following, class_name: "User", join_table: "friendship", foreign_key: "follower_id", association_foreign_key: "user_id"

  has_many :pylons

  mount_uploader :image, ImageUploader

  def oauth_login?
    facebook_id.present?
  end
end
