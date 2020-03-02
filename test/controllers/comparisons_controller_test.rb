require 'test_helper'

class ComparisonsControllerTest < ActionDispatch::IntegrationTest
  test "should get profiles:references" do
    get comparisons_profiles:references_url
    assert_response :success
  end

end
