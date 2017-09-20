require 'test_helper'

class PuestoSaludsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puesto_salud = puesto_saluds(:one)
  end

  test "should get index" do
    get puesto_saluds_url
    assert_response :success
  end

  test "should get new" do
    get new_puesto_salud_url
    assert_response :success
  end

  test "should create puesto_salud" do
    assert_difference('PuestoSalud.count') do
      post puesto_saluds_url, params: { puesto_salud: { contacto: @puesto_salud.contacto, direccion: @puesto_salud.direccion, distrito: @puesto_salud.distrito, localidad: @puesto_salud.localidad, nombre: @puesto_salud.nombre, regionSanitaria: @puesto_salud.regionSanitaria } }
    end

    assert_redirected_to puesto_salud_url(PuestoSalud.last)
  end

  test "should show puesto_salud" do
    get puesto_salud_url(@puesto_salud)
    assert_response :success
  end

  test "should get edit" do
    get edit_puesto_salud_url(@puesto_salud)
    assert_response :success
  end

  test "should update puesto_salud" do
    patch puesto_salud_url(@puesto_salud), params: { puesto_salud: { contacto: @puesto_salud.contacto, direccion: @puesto_salud.direccion, distrito: @puesto_salud.distrito, localidad: @puesto_salud.localidad, nombre: @puesto_salud.nombre, regionSanitaria: @puesto_salud.regionSanitaria } }
    assert_redirected_to puesto_salud_url(@puesto_salud)
  end

  test "should destroy puesto_salud" do
    assert_difference('PuestoSalud.count', -1) do
      delete puesto_salud_url(@puesto_salud)
    end

    assert_redirected_to puesto_saluds_url
  end
end
