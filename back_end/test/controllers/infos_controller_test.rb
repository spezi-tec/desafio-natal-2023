require "test_helper"

class InfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get infos_url, as: :json
    assert_response :success
  end

  test "should create info" do
    assert_difference("Info.count") do
      post infos_url, params: { info: { description: @info.description, kind: @info.kind, url_img: @info.url_img } }, as: :json
    end

    assert_response :created
  end

  test "should show info" do
    get info_url(@info), as: :json
    assert_response :success
  end

  test "should update info" do
    patch info_url(@info), params: { info: { description: @info.description, kind: @info.kind, url_img: @info.url_img } }, as: :json
    assert_response :success
  end

  test "should destroy info" do
    assert_difference("Info.count", -1) do
      delete info_url(@info), as: :json
    end

    assert_response :no_content
  end
end
