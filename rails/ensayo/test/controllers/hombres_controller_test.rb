require 'test_helper'

class HombresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hombre = hombres(:one)
  end

  test "should get index" do
    get hombres_url
    assert_response :success
  end

  test "should get new" do
    get new_hombre_url
    assert_response :success
  end

  test "should create hombre" do
    assert_difference('Hombre.count') do
      post hombres_url, params: { hombre: { apellido: @hombre.apellido, cedula: @hombre.cedula, nombre: @hombre.nombre } }
    end

    assert_redirected_to hombre_url(Hombre.last)
  end

  test "should show hombre" do
    get hombre_url(@hombre)
    assert_response :success
  end

  test "should get edit" do
    get edit_hombre_url(@hombre)
    assert_response :success
  end

  test "should update hombre" do
    patch hombre_url(@hombre), params: { hombre: { apellido: @hombre.apellido, cedula: @hombre.cedula, nombre: @hombre.nombre } }
    assert_redirected_to hombre_url(@hombre)
  end

  test "should destroy hombre" do
    assert_difference('Hombre.count', -1) do
      delete hombre_url(@hombre)
    end

    assert_redirected_to hombres_url
  end
end
