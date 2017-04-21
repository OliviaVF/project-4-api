class PylonSerializer < ActiveModel::Serializer
  attributes :id, :category, :comment, :user
  has_one :user
  has_one :listing
  has_one :category
end
