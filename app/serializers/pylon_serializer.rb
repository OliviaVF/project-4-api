class PylonSerializer < ActiveModel::Serializer
  attributes :id, :category, :comment
  has_one :user
  has_one :listing
  has_one :category
end
