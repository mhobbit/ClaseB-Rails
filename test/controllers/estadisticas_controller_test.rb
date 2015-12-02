require 'test_helper'

class EstadisticasControllerTest < ActionController::TestCase
  setup do
    @estadistica = estadisticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadisticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadistica" do
    assert_difference('Estadistica.count') do
      post :create, estadistica: { cambiosRpm: @estadistica.cambiosRpm, cambiosVelocidad: @estadistica.cambiosVelocidad, ruta: @estadistica.ruta, tiempoVelocidad: @estadistica.tiempoVelocidad, velocidad: @estadistica.velocidad, velocidadMaxima: @estadistica.velocidadMaxima, velocidadMedia: @estadistica.velocidadMedia, velocidadMinima: @estadistica.velocidadMinima }
    end

    assert_redirected_to estadistica_path(assigns(:estadistica))
  end

  test "should show estadistica" do
    get :show, id: @estadistica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadistica
    assert_response :success
  end

  test "should update estadistica" do
    patch :update, id: @estadistica, estadistica: { cambiosRpm: @estadistica.cambiosRpm, cambiosVelocidad: @estadistica.cambiosVelocidad, ruta: @estadistica.ruta, tiempoVelocidad: @estadistica.tiempoVelocidad, velocidad: @estadistica.velocidad, velocidadMaxima: @estadistica.velocidadMaxima, velocidadMedia: @estadistica.velocidadMedia, velocidadMinima: @estadistica.velocidadMinima }
    assert_redirected_to estadistica_path(assigns(:estadistica))
  end

  test "should destroy estadistica" do
    assert_difference('Estadistica.count', -1) do
      delete :destroy, id: @estadistica
    end

    assert_redirected_to estadisticas_path
  end
end
