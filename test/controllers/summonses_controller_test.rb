require 'test_helper'

class SummonsesControllerTest < ActionController::TestCase
  setup do
    @summons = summonses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:summonses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create summons" do
    assert_difference('Summons.count') do
      post :create, summons: { place: @summons.place, reason: @summons.reason, student: @summons.student, teacher: @summons.teacher }
    end

    assert_redirected_to summons_path(assigns(:summons))
  end

  test "should show summons" do
    get :show, id: @summons
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @summons
    assert_response :success
  end

  test "should update summons" do
    patch :update, id: @summons, summons: { place: @summons.place, reason: @summons.reason, student: @summons.student, teacher: @summons.teacher }
    assert_redirected_to summons_path(assigns(:summons))
  end

  test "should destroy summons" do
    assert_difference('Summons.count', -1) do
      delete :destroy, id: @summons
    end

    assert_redirected_to summonses_path
  end
end
