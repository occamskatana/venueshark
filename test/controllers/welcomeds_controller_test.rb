require 'test_helper'

class WelcomedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @welcomed = welcomeds(:one)
  end

  test "should get index" do
    get welcomeds_url
    assert_response :success
  end

  test "should get new" do
    get new_welcomed_url
    assert_response :success
  end

  test "should create welcomed" do
    assert_difference('Welcomed.count') do
      post welcomeds_url, params: { welcomed: {  } }
    end

    assert_redirected_to welcomed_url(Welcomed.last)
  end

  test "should show welcomed" do
    get welcomed_url(@welcomed)
    assert_response :success
  end

  test "should get edit" do
    get edit_welcomed_url(@welcomed)
    assert_response :success
  end

  test "should update welcomed" do
    patch welcomed_url(@welcomed), params: { welcomed: {  } }
    assert_redirected_to welcomed_url(@welcomed)
  end

  test "should destroy welcomed" do
    assert_difference('Welcomed.count', -1) do
      delete welcomed_url(@welcomed)
    end

    assert_redirected_to welcomeds_url
  end
end
