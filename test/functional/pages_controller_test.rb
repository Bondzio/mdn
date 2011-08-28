require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get coaches" do
    get :coaches
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get manerisms" do
    get :manerisms
    assert_response :success
  end

  test "should get multimedia" do
    get :multimedia
    assert_response :success
  end

  test "should get curriculum" do
    get :curriculum
    assert_response :success
  end

  test "should get biblestudy" do
    get :biblestudy
    assert_response :success
  end

  test "should get bootcamp" do
    get :bootcamp
    assert_response :success
  end

end
