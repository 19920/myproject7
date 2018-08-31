require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "should get riders list" do
    get('/riders')
    assert_response :success
  end

end
