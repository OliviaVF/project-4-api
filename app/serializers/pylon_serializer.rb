class PylonSerializer < ActiveModel::Serializer
  attributes :id, :category, :comment, :user, :feed, :created_at, :category_id, :listing_id, :listing
  has_one :user
  has_one :listing
  has_one :category
end
