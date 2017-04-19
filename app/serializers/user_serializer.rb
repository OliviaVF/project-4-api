class UserSerializer < ActiveModel::Serializer
  has_many :followers
  has_many :following
  attributes :id, :name, :username, :email, :image_src, :follower_ids

  def image_src
    object.image.url
  end
end
