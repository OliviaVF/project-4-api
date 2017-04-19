class UserSerializer < ActiveModel::Serializer
  has_many :followers
  has_many :following
  has_many :pylons
  attributes :id, :name, :username, :email, :image_src, :follower_ids, :pylons

  def image_src
    object.image.url
  end
end
