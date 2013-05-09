require 'test_helper'

class AudirtCodesControllerTest < ActionController::TestCase
  setup do
    @audirt_code = audirt_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audirt_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audirt_code" do
    assert_difference('AudirtCode.count') do
      post :create, audirt_code: { code: @audirt_code.code }
    end

    assert_redirected_to audirt_code_path(assigns(:audirt_code))
  end

  test "should show audirt_code" do
    get :show, id: @audirt_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audirt_code
    assert_response :success
  end

  test "should update audirt_code" do
    put :update, id: @audirt_code, audirt_code: { code: @audirt_code.code }
    assert_redirected_to audirt_code_path(assigns(:audirt_code))
  end

  test "should destroy audirt_code" do
    assert_difference('AudirtCode.count', -1) do
      delete :destroy, id: @audirt_code
    end

    assert_redirected_to audirt_codes_path
  end
end
