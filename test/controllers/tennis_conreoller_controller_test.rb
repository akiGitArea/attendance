require "test_helper"

class TennisConreollerControllerTest < ActionDispatch::IntegrationTest
  test "should get tennis" do
    get tennis_conreoller_tennis_url
    assert_response :success
  end
end
