require 'test_helper'

class AlkalinitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alkalinity = alkalinities(:one)
  end

  test "should get index" do
    get alkalinities_url
    assert_response :success
  end

  test "should get new" do
    get new_alkalinity_url
    assert_response :success
  end

  test "should create alkalinity" do
    assert_difference('Alkalinity.count') do
      post alkalinities_url, params: { alkalinity: { dKH: @alkalinity.dKH } }
    end

    assert_redirected_to alkalinity_url(Alkalinity.last)
  end

  test "should show alkalinity" do
    get alkalinity_url(@alkalinity)
    assert_response :success
  end

  test "should get edit" do
    get edit_alkalinity_url(@alkalinity)
    assert_response :success
  end

  test "should update alkalinity" do
    patch alkalinity_url(@alkalinity), params: { alkalinity: { dKH: @alkalinity.dKH } }
    assert_redirected_to alkalinity_url(@alkalinity)
  end

  test "should destroy alkalinity" do
    assert_difference('Alkalinity.count', -1) do
      delete alkalinity_url(@alkalinity)
    end

    assert_redirected_to alkalinities_url
  end
end
