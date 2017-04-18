class AddGooglePlaceIdToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :google_place_id, :string
  end
end
