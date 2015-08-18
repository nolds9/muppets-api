require 'test_helper'
require 'pry'

class ApiControllerTest < ActionController::TestCase
  #setup
  setup do
    @one = muppets(:one)
  end

  test "request for json does return successful" do
    get :index, format: :json
    assert_response :success
  end

  test "get 'show' test "do
    get :show, id: @one.id
    body = JSON.parse(response.body)
    assert_equal "kermit", body["name"].downcase
    # binding.pry
  end

  test "does it add a new muppet with post action" do
    # assert_difference('Muppet.count') do
    #   post :create, {name:"New_Muppet", image_url: "New_Muppet"}
    # end
    post :create, {name:"New_Muppet", image_url: "New_Muppet"}
    assert_equal "New_Muppet", Muppet.last.name
  end
end
