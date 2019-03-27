require 'test_helper'

class SocietiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @society = societies(:one)
  end

  test "should get index" do
    get societies_url, as: :json
    assert_response :success
  end

  test "should create society" do
    assert_difference('Society.count') do
      post societies_url, params: { society: { affiliation: @society.affiliation, org: @society.org } }, as: :json
    end

    assert_response 201
  end

  test "should show society" do
    get society_url(@society), as: :json
    assert_response :success
  end

  test "should update society" do
    patch society_url(@society), params: { society: { affiliation: @society.affiliation, org: @society.org } }, as: :json
    assert_response 200
  end

  test "should destroy society" do
    assert_difference('Society.count', -1) do
      delete society_url(@society), as: :json
    end

    assert_response 204
  end
end
