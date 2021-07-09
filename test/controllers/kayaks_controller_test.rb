require 'test_helper'

class KayaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kayak = kayaks(:one)
  end

  test "should get index" do
    get kayaks_url
    assert_response :success
  end

  test "should get new" do
    get new_kayak_url
    assert_response :success
  end

  test "should create kayak" do
    assert_difference('Kayak.count') do
      post kayaks_url, params: { kayak: { capacity: @kayak.capacity, location: @kayak.location, name: @kayak.name, price: @kayak.price } }
    end

    assert_redirected_to kayak_url(Kayak.last)
  end

  test "should show kayak" do
    get kayak_url(@kayak)
    assert_response :success
  end

  test "should get edit" do
    get edit_kayak_url(@kayak)
    assert_response :success
  end

  test "should update kayak" do
    patch kayak_url(@kayak), params: { kayak: { capacity: @kayak.capacity, location: @kayak.location, name: @kayak.name, price: @kayak.price } }
    assert_redirected_to kayak_url(@kayak)
  end

  test "should destroy kayak" do
    assert_difference('Kayak.count', -1) do
      delete kayak_url(@kayak)
    end

    assert_redirected_to kayaks_url
  end
end
