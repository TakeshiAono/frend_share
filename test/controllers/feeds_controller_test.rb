require 'test_helper'

class FeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get pictures_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_url
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Feed.count') do
      post pictures_url, params: { picture: { image: @picture.image } }
    end

    assert_redirected_to picture_url(Feed.last)
  end

  test "should show picture" do
    get picture_url(@picture)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_url(@picture)
    assert_response :success
  end

  test "should update picture" do
    patch picture_url(@picture), params: { picture: { image: @picture.image } }
    assert_redirected_to picture_url(@picture)
  end

  test "should destroy picture" do
    assert_difference('Feed.count', -1) do
      delete picture_url(@picture)
    end

    assert_redirected_to pictures_url
  end
end
