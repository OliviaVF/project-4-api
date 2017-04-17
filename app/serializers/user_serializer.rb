class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :image_src

  def image_src
    object.image.url
  end
end
