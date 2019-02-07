require 'test_helper'

class DependencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependence = dependences(:one)
  end

  test "should get index" do
    get dependences_url
    assert_response :success
  end

  test "should get new" do
    get new_dependence_url
    assert_response :success
  end

  test "should create dependence" do
    assert_difference('Dependence.count') do
      post dependences_url, params: { dependence: { description: @dependence.description, name: @dependence.name, state: @dependence.state } }
    end

    assert_redirected_to dependence_url(Dependence.last)
  end

  test "should show dependence" do
    get dependence_url(@dependence)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependence_url(@dependence)
    assert_response :success
  end

  test "should update dependence" do
    patch dependence_url(@dependence), params: { dependence: { description: @dependence.description, name: @dependence.name, state: @dependence.state } }
    assert_redirected_to dependence_url(@dependence)
  end

  test "should destroy dependence" do
    assert_difference('Dependence.count', -1) do
      delete dependence_url(@dependence)
    end

    assert_redirected_to dependences_url
  end
end
