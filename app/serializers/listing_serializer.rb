class ListingSerializer < ActiveModel::Serializer
  attributes :id, :type_of_listing, :address, :website, :tel, :lat, :lng, :exp_date, :name, :google_place_id
end
