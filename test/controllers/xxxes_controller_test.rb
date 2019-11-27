require 'test_helper'

class XxxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xxx = xxxes(:one)
  end

  test "should get index" do
    get xxxes_url
    assert_response :success
  end

  test "should get new" do
    get new_xxx_url
    assert_response :success
  end

  test "should create xxx" do
    assert_difference('Xxx.count') do
      post xxxes_url, params: { xxx: { description: @xxx.description, image: @xxx.image, star: @xxx.star, title: @xxx.title, video: @xxx.video } }
    end

    assert_redirected_to xxx_url(Xxx.last)
  end

  test "should show xxx" do
    get xxx_url(@xxx)
    assert_response :success
  end

  test "should get edit" do
    get edit_xxx_url(@xxx)
    assert_response :success
  end

  test "should update xxx" do
    patch xxx_url(@xxx), params: { xxx: { description: @xxx.description, image: @xxx.image, star: @xxx.star, title: @xxx.title, video: @xxx.video } }
    assert_redirected_to xxx_url(@xxx)
  end

  test "should destroy xxx" do
    assert_difference('Xxx.count', -1) do
      delete xxx_url(@xxx)
    end

    assert_redirected_to xxxes_url
  end
end
