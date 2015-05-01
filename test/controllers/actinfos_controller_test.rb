require 'test_helper'

class ActinfosControllerTest < ActionController::TestCase
  setup do
    @actinfo = actinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actinfo" do
    assert_difference('Actinfo.count') do
      post :create, actinfo: { info: @actinfo.info, money: @actinfo.money, time: @actinfo.time }
    end

    assert_redirected_to actinfo_path(assigns(:actinfo))
  end

  test "should show actinfo" do
    get :show, id: @actinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actinfo
    assert_response :success
  end

  test "should update actinfo" do
    patch :update, id: @actinfo, actinfo: { info: @actinfo.info, money: @actinfo.money, time: @actinfo.time }
    assert_redirected_to actinfo_path(assigns(:actinfo))
  end

  test "should destroy actinfo" do
    assert_difference('Actinfo.count', -1) do
      delete :destroy, id: @actinfo
    end

    assert_redirected_to actinfos_path
  end
end
