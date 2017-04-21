class ListingSerializer < ActiveModel::Serializer
  has_many :pylons
  attributes :id, :type_of_listing, :address, :website, :tel, :lat, :lng, :exp_date, :name, :google_place_id, :pylons
end
