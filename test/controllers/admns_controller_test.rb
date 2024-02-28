require "test_helper"

class AdmnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admn = admns(:one)
  end

  test "should get index" do
    get admns_url
    assert_response :success
  end

  test "should get new" do
    get new_admn_url
    assert_response :success
  end

  test "should create admn" do
    assert_difference("Admn.count") do
      post admns_url, params: { admn: {  } }
    end

    assert_redirected_to admn_url(Admn.last)
  end

  test "should show admn" do
    get admn_url(@admn)
    assert_response :success
  end

  test "should get edit" do
    get edit_admn_url(@admn)
    assert_response :success
  end

  test "should update admn" do
    patch admn_url(@admn), params: { admn: {  } }
    assert_redirected_to admn_url(@admn)
  end

  test "should destroy admn" do
    assert_difference("Admn.count", -1) do
      delete admn_url(@admn)
    end

    assert_redirected_to admns_url
  end
end
