require "test_helper"

class PrintsControllerTest < ActionDispatch::IntegrationTest
  test "should get pregi" do
    get prints_pregi_url
    assert_response :success
  end

  test "should get pchart_chart" do
    get prints_pchart_chart_url
    assert_response :success
  end
  
  test "should get pchart_patient" do
    get prints_pchart_chart_patient_url
    assert_response :success
  end

  test "should get ppatient" do
    get prints_ppatient_url
    assert_response :success
  end
end
