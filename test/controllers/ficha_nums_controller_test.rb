require 'test_helper'

class FichaNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_num = ficha_nums(:one)
  end

  test "should get index" do
    get ficha_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_num_url
    assert_response :success
  end

  test "should create ficha_num" do
    assert_difference('FichaNum.count') do
      post ficha_nums_url, params: { ficha_num: { numero: @ficha_num.numero } }
    end

    assert_redirected_to ficha_num_url(FichaNum.last)
  end

  test "should show ficha_num" do
    get ficha_num_url(@ficha_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_num_url(@ficha_num)
    assert_response :success
  end

  test "should update ficha_num" do
    patch ficha_num_url(@ficha_num), params: { ficha_num: { numero: @ficha_num.numero } }
    assert_redirected_to ficha_num_url(@ficha_num)
  end

  test "should destroy ficha_num" do
    assert_difference('FichaNum.count', -1) do
      delete ficha_num_url(@ficha_num)
    end

    assert_redirected_to ficha_nums_url
  end
end
