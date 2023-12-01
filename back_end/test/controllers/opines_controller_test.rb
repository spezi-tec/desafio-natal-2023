require "test_helper"

class OpinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opine = opines(:one)
  end

  test "should get index" do
    get opines_url, as: :json
    assert_response :success
  end

  test "should create opine" do
    assert_difference("Opine.count") do
      post opines_url, params: { opine: { comment: @opine.comment, user_name: @opine.user_name } }, as: :json
    end

    assert_response :created
  end

  test "should show opine" do
    get opine_url(@opine), as: :json
    assert_response :success
  end

  test "should update opine" do
    patch opine_url(@opine), params: { opine: { comment: @opine.comment, user_name: @opine.user_name } }, as: :json
    assert_response :success
  end

  test "should destroy opine" do
    assert_difference("Opine.count", -1) do
      delete opine_url(@opine), as: :json
    end

    assert_response :no_content
  end
end
