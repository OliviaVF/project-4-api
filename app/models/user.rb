class User < ApplicationRecord
  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true, unless: :oauth_login?, on: :create
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?, on: :create
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  has_many :pylons, dependent: :destroy

  mount_uploader :image, ImageUploader, unless: :oauth_login?, on: :create

  def oauth_login?
    facebook_id.present?
  end

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow', dependent: :destroy
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow', dependent: :destroy
  has_many :following, through: :following_relationships, source: :following

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end
end
