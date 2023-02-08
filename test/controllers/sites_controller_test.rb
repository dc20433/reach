require "test_helper"

class SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sites_home_url
    assert_response :success
  end

  test "should get consent" do
    get sites_consent_url
    assert_response :success
  end

  test "should get insurance" do
    get sites_insurance_url
    assert_response :success
  end
end
