require "test_helper"

class GrettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gretting = grettings(:one)
  end

  test "should get index" do
    get grettings_url
    assert_response :success
  end

  test "should get new" do
    get new_gretting_url
    assert_response :success
  end

  test "should create gretting" do
    assert_difference('Gretting.count') do
      post grettings_url, params: { gretting: { message: @gretting.message, name: @gretting.name } }
    end

    assert_redirected_to gretting_url(Gretting.last)
  end

  test "should show gretting" do
    get gretting_url(@gretting)
    assert_response :success
  end

  test "should get edit" do
    get edit_gretting_url(@gretting)
    assert_response :success
  end

  test "should update gretting" do
    patch gretting_url(@gretting), params: { gretting: { message: @gretting.message, name: @gretting.name } }
    assert_redirected_to gretting_url(@gretting)
  end

  test "should destroy gretting" do
    assert_difference('Gretting.count', -1) do
      delete gretting_url(@gretting)
    end

    assert_redirected_to grettings_url
  end
end
