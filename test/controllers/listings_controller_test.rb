require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url, as: :json
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { address: @listing.address, exp_date: @listing.exp_date, lat: @listing.lat, lng: @listing.lng, tel: @listing.tel, type: @listing.type, website: @listing.website } }, as: :json
    end

    assert_response 201
  end

  test "should show listing" do
    get listing_url(@listing), as: :json
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { address: @listing.address, exp_date: @listing.exp_date, lat: @listing.lat, lng: @listing.lng, tel: @listing.tel, type: @listing.type, website: @listing.website } }, as: :json
    assert_response 200
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing), as: :json
    end

    assert_response 204
  end
end
