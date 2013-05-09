require 'test_helper'

class CadenasControllerTest < ActionController::TestCase
  setup do
    @cadena = cadenas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadenas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadena" do
    assert_difference('Cadena.count') do
      post :create, cadena: { string: @cadena.string, string: @cadena.string }
    end

    assert_redirected_to cadena_path(assigns(:cadena))
  end

  test "should show cadena" do
    get :show, id: @cadena
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadena
    assert_response :success
  end

  test "should update cadena" do
    put :update, id: @cadena, cadena: { string: @cadena.string, string: @cadena.string }
    assert_redirected_to cadena_path(assigns(:cadena))
  end

  test "should destroy cadena" do
    assert_difference('Cadena.count', -1) do
      delete :destroy, id: @cadena
    end

    assert_redirected_to cadenas_path
  end
end
