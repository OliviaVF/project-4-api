require 'test_helper'

class PylonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pylon = pylons(:one)
  end

  test "should get index" do
    get pylons_url, as: :json
    assert_response :success
  end

  test "should create pylon" do
    assert_difference('Pylon.count') do
      post pylons_url, params: { pylon: { category: @pylon.category, comment: @pylon.comment, listing_id: @pylon.listing_id, user_id: @pylon.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pylon" do
    get pylon_url(@pylon), as: :json
    assert_response :success
  end

  test "should update pylon" do
    patch pylon_url(@pylon), params: { pylon: { category: @pylon.category, comment: @pylon.comment, listing_id: @pylon.listing_id, user_id: @pylon.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy pylon" do
    assert_difference('Pylon.count', -1) do
      delete pylon_url(@pylon), as: :json
    end

    assert_response 204
  end
end
