require 'test_helper'

class CompanerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companero = companeros(:one)
  end

  test "should get index" do
    get companeros_url
    assert_response :success
  end

  test "should get new" do
    get new_companero_url
    assert_response :success
  end

  test "should create companero" do
    assert_difference('Companero.count') do
      post companeros_url, params: { companero: { descripcion: @companero.descripcion, especialidad: @companero.especialidad, nombre: @companero.nombre } }
    end

    assert_redirected_to companero_url(Companero.last)
  end

  test "should show companero" do
    get companero_url(@companero)
    assert_response :success
  end

  test "should get edit" do
    get edit_companero_url(@companero)
    assert_response :success
  end

  test "should update companero" do
    patch companero_url(@companero), params: { companero: { descripcion: @companero.descripcion, especialidad: @companero.especialidad, nombre: @companero.nombre } }
    assert_redirected_to companero_url(@companero)
  end

  test "should destroy companero" do
    assert_difference('Companero.count', -1) do
      delete companero_url(@companero)
    end

    assert_redirected_to companeros_url
  end
end
