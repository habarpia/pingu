require 'test_helper'

class PenguinsControllerTest < ActionController::TestCase
  setup do
    @penguin = penguins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penguins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penguin" do
    assert_difference('Penguin.count') do
      post :create, penguin: { beak_dad: @penguin.beak_dad, beak_mum: @penguin.beak_mum, beak_own: @penguin.beak_own, belly_colour_dad: @penguin.belly_colour_dad, belly_colour_mum: @penguin.belly_colour_mum, belly_colour_own: @penguin.belly_colour_own, belly_dad: @penguin.belly_dad, belly_mum: @penguin.belly_mum, belly_own: @penguin.belly_own, body_dad: @penguin.body_dad, body_mum: @penguin.body_mum, body_own: @penguin.body_own, colour_dad: @penguin.colour_dad, colour_mum: @penguin.colour_mum, colour_own: @penguin.colour_own, eyes_dad: @penguin.eyes_dad, eyes_mum: @penguin.eyes_mum, eyes_own: @penguin.eyes_own, gender: @penguin.gender, name: @penguin.name, personality: @penguin.personality }
    end

    assert_redirected_to penguin_path(assigns(:penguin))
  end

  test "should show penguin" do
    get :show, id: @penguin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penguin
    assert_response :success
  end

  test "should update penguin" do
    patch :update, id: @penguin, penguin: { beak_dad: @penguin.beak_dad, beak_mum: @penguin.beak_mum, beak_own: @penguin.beak_own, belly_colour_dad: @penguin.belly_colour_dad, belly_colour_mum: @penguin.belly_colour_mum, belly_colour_own: @penguin.belly_colour_own, belly_dad: @penguin.belly_dad, belly_mum: @penguin.belly_mum, belly_own: @penguin.belly_own, body_dad: @penguin.body_dad, body_mum: @penguin.body_mum, body_own: @penguin.body_own, colour_dad: @penguin.colour_dad, colour_mum: @penguin.colour_mum, colour_own: @penguin.colour_own, eyes_dad: @penguin.eyes_dad, eyes_mum: @penguin.eyes_mum, eyes_own: @penguin.eyes_own, gender: @penguin.gender, name: @penguin.name, personality: @penguin.personality }
    assert_redirected_to penguin_path(assigns(:penguin))
  end

  test "should destroy penguin" do
    assert_difference('Penguin.count', -1) do
      delete :destroy, id: @penguin
    end

    assert_redirected_to penguins_path
  end
end
