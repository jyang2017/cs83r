require 'test_helper'

class PlaneflightsControllerTest < ActionController::TestCase
  setup do
    @planeflight = planeflights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planeflights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planeflight" do
    assert_difference('Planeflight.count') do
      post :create, planeflight: { airline: @planeflight.airline, fromcity: @planeflight.fromcity, number: @planeflight.number, plane_id: @planeflight.plane_id, tocity: @planeflight.tocity }
    end

    assert_redirected_to planeflight_path(assigns(:planeflight))
  end

  test "should show planeflight" do
    get :show, id: @planeflight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planeflight
    assert_response :success
  end

  test "should update planeflight" do
    patch :update, id: @planeflight, planeflight: { airline: @planeflight.airline, fromcity: @planeflight.fromcity, number: @planeflight.number, plane_id: @planeflight.plane_id, tocity: @planeflight.tocity }
    assert_redirected_to planeflight_path(assigns(:planeflight))
  end

  test "should destroy planeflight" do
    assert_difference('Planeflight.count', -1) do
      delete :destroy, id: @planeflight
    end

    assert_redirected_to planeflights_path
  end
end
