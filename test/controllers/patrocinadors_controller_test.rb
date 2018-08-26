require 'test_helper'

class PatrocinadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patrocinador = patrocinadors(:one)
  end

  test "should get index" do
    get patrocinadors_url
    assert_response :success
  end

  test "should get new" do
    get new_patrocinador_url
    assert_response :success
  end

  test "should create patrocinador" do
    assert_difference('Patrocinador.count') do
      post patrocinadors_url, params: { patrocinador: { descripcion: @patrocinador.descripcion, dinero: @patrocinador.dinero, nit: @patrocinador.nit, nombre: @patrocinador.nombre } }
    end

    assert_redirected_to patrocinador_url(Patrocinador.last)
  end

  test "should show patrocinador" do
    get patrocinador_url(@patrocinador)
    assert_response :success
  end

  test "should get edit" do
    get edit_patrocinador_url(@patrocinador)
    assert_response :success
  end

  test "should update patrocinador" do
    patch patrocinador_url(@patrocinador), params: { patrocinador: { descripcion: @patrocinador.descripcion, dinero: @patrocinador.dinero, nit: @patrocinador.nit, nombre: @patrocinador.nombre } }
    assert_redirected_to patrocinador_url(@patrocinador)
  end

  test "should destroy patrocinador" do
    assert_difference('Patrocinador.count', -1) do
      delete patrocinador_url(@patrocinador)
    end

    assert_redirected_to patrocinadors_url
  end
end
