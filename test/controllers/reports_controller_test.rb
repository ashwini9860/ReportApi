require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url, as: :json
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { total_bill: @report.total_bill, total_cost: @report.total_cost, total_usage: @report.total_usage } }, as: :json
    end

    assert_response 201
  end

  test "should show report" do
    get report_url(@report), as: :json
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { total_bill: @report.total_bill, total_cost: @report.total_cost, total_usage: @report.total_usage } }, as: :json
    assert_response 200
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report), as: :json
    end

    assert_response 204
  end
end
