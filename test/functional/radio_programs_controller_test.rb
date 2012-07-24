require 'test_helper'

class RadioProgramsControllerTest < ActionController::TestCase
  setup do
    @radio_program = radio_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:radio_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create radio_program" do
    assert_difference('RadioProgram.count') do
      post :create, :radio_program => @radio_program.attributes
    end

    assert_redirected_to radio_program_path(assigns(:radio_program))
  end

  test "should show radio_program" do
    get :show, :id => @radio_program.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @radio_program.to_param
    assert_response :success
  end

  test "should update radio_program" do
    put :update, :id => @radio_program.to_param, :radio_program => @radio_program.attributes
    assert_redirected_to radio_program_path(assigns(:radio_program))
  end

  test "should destroy radio_program" do
    assert_difference('RadioProgram.count', -1) do
      delete :destroy, :id => @radio_program.to_param
    end

    assert_redirected_to radio_programs_path
  end
end
