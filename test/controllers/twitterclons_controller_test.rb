require "test_helper"

class TwitterclonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitterclon = twitterclons(:one)
  end

  test "should get index" do
    get twitterclons_url
    assert_response :success
  end

  test "should get new" do
    get new_twitterclon_url
    assert_response :success
  end

  test "should create twitterclon" do
    assert_difference("Twitterclon.count") do
      post twitterclons_url, params: { twitterclon: { description: @twitterclon.description, username: @twitterclon.username } }
    end

    assert_redirected_to twitterclon_url(Twitterclon.last)
  end

  test "should show twitterclon" do
    get twitterclon_url(@twitterclon)
    assert_response :success
  end

  test "should get edit" do
    get edit_twitterclon_url(@twitterclon)
    assert_response :success
  end

  test "should update twitterclon" do
    patch twitterclon_url(@twitterclon), params: { twitterclon: { description: @twitterclon.description, username: @twitterclon.username } }
    assert_redirected_to twitterclon_url(@twitterclon)
  end

  test "should destroy twitterclon" do
    assert_difference("Twitterclon.count", -1) do
      delete twitterclon_url(@twitterclon)
    end

    assert_redirected_to twitterclons_url
  end
end
