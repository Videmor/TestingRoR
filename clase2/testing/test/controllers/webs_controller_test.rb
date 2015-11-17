require 'test_helper'

class WebsControllerTest < ActionController::TestCase

  setup do
    @web = webs(:google)
  end

  test '#index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:webs)
  end

  test "#create" do
    assert_difference('Web.count', 1) do
      post :create, web: { description: 'a' * 11, name: 'Netflix', url: 'http://netflix.com' }
    end

    assert_redirected_to web_path(assigns(:web))
  end

  test "should update web" do
    patch :update, id: @web, web: { description: 'Una gran empresa dedicada al manejo de base de datos y otros servicios' , name: 'Oracle' , url: 'http://www.oracle.com' }
    assert_redirected_to web_path(assigns(:web))

    @web.reload

    assert_equal 'Oracle', @web.name
    assert_equal 'http://www.oracle.com', @web.url
  end

  test "should destroy web" do
    assert_difference('Web.count', -1) do
      delete :destroy, id: @web
    end
  end
end
