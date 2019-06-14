require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get public_speaking" do
    get pages_public_speaking_url
    assert_response :success
  end

end
