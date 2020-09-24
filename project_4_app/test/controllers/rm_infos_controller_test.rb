require 'test_helper'

class RmInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rm_info = rm_infos(:one)
  end

  test "should get index" do
    get rm_infos_url, as: :json
    assert_response :success
  end

  test "should create rm_info" do
    assert_difference('RmInfo.count') do
      post rm_infos_url, params: { rm_info: { content: @rm_info.content, dimension: @rm_info.dimension, name: @rm_info.name } }, as: :json
    end

    assert_response 201
  end

  test "should show rm_info" do
    get rm_info_url(@rm_info), as: :json
    assert_response :success
  end

  test "should update rm_info" do
    patch rm_info_url(@rm_info), params: { rm_info: { content: @rm_info.content, dimension: @rm_info.dimension, name: @rm_info.name } }, as: :json
    assert_response 200
  end

  test "should destroy rm_info" do
    assert_difference('RmInfo.count', -1) do
      delete rm_info_url(@rm_info), as: :json
    end

    assert_response 204
  end
end
