require 'test_helper'

class AwsBillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_billing = aws_billings(:one)
  end

  test "should get index" do
    get aws_billings_url, as: :json
    assert_response :success
  end

  test "should create aws_billing" do
    assert_difference('AwsBilling.count') do
      post aws_billings_url, params: { aws_billing: { detailed_billing: @aws_billing.detailed_billing, summary_cost: @aws_billing.summary_cost } }, as: :json
    end

    assert_response 201
  end

  test "should show aws_billing" do
    get aws_billing_url(@aws_billing), as: :json
    assert_response :success
  end

  test "should update aws_billing" do
    patch aws_billing_url(@aws_billing), params: { aws_billing: { detailed_billing: @aws_billing.detailed_billing, summary_cost: @aws_billing.summary_cost } }, as: :json
    assert_response 200
  end

  test "should destroy aws_billing" do
    assert_difference('AwsBilling.count', -1) do
      delete aws_billing_url(@aws_billing), as: :json
    end

    assert_response 204
  end
end
