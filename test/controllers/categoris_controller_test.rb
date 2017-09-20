require 'test_helper'

class CategorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categori = categoris(:one)
  end

  test "should get index" do
    get categoris_url
    assert_response :success
  end

  test "should get new" do
    get new_categori_url
    assert_response :success
  end

  test "should create categori" do
    assert_difference('Categori.count') do
      post categoris_url, params: { categori: { tipo: @categori.tipo } }
    end

    assert_redirected_to categori_url(Categori.last)
  end

  test "should show categori" do
    get categori_url(@categori)
    assert_response :success
  end

  test "should get edit" do
    get edit_categori_url(@categori)
    assert_response :success
  end

  test "should update categori" do
    patch categori_url(@categori), params: { categori: { tipo: @categori.tipo } }
    assert_redirected_to categori_url(@categori)
  end

  test "should destroy categori" do
    assert_difference('Categori.count', -1) do
      delete categori_url(@categori)
    end

    assert_redirected_to categoris_url
  end
end
