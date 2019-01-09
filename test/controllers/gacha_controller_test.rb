require 'test_helper'

class GachaControllerTest < ActionDispatch::IntegrationTest
  test "should get effect" do
    get gacha_effect_url
    assert_response :success
  end

  test "should get result" do
    get gacha_result_url
    assert_response :success
  end

end
