require 'test_helper'

class CategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorias = categoria(:one)
  end

  test "should get index" do
    get categoria_url
    assert_response :success
  end

  test "should get new" do
    get new_categorias_url
    assert_response :success
  end

  test "should create categorias" do
    assert_difference('Categorias.count') do
      post categoria_url, params: { categorias: { tipo: @categorias.tipo } }
    end

    assert_redirected_to categorias_url(Categorias.last)
  end

  test "should show categorias" do
    get categorias_url(@categorias)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorias_url(@categorias)
    assert_response :success
  end

  test "should update categorias" do
    patch categorias_url(@categorias), params: { categorias: { tipo: @categorias.tipo } }
    assert_redirected_to categorias_url(@categorias)
  end

  test "should destroy categorias" do
    assert_difference('Categorias.count', -1) do
      delete categorias_url(@categorias)
    end

    assert_redirected_to categoria_url
  end
end
