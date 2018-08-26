require 'test_helper'

class EnemigosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enemigo = enemigos(:one)
  end

  test "should get index" do
    get enemigos_url
    assert_response :success
  end

  test "should get new" do
    get new_enemigo_url
    assert_response :success
  end

  test "should create enemigo" do
    assert_difference('Enemigo.count') do
      post enemigos_url, params: { enemigo: { edad: @enemigo.edad, nombre: @enemigo.nombre, poderes: @enemigo.poderes } }
    end

    assert_redirected_to enemigo_url(Enemigo.last)
  end

  test "should show enemigo" do
    get enemigo_url(@enemigo)
    assert_response :success
  end

  test "should get edit" do
    get edit_enemigo_url(@enemigo)
    assert_response :success
  end

  test "should update enemigo" do
    patch enemigo_url(@enemigo), params: { enemigo: { edad: @enemigo.edad, nombre: @enemigo.nombre, poderes: @enemigo.poderes } }
    assert_redirected_to enemigo_url(@enemigo)
  end

  test "should destroy enemigo" do
    assert_difference('Enemigo.count', -1) do
      delete enemigo_url(@enemigo)
    end

    assert_redirected_to enemigos_url
  end
end
