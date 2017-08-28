class AwsBillingsController < ApplicationController
  before_action :set_aws_billing, only: [:show, :update, :destroy]

  # GET /aws_billings
  def index
    @aws_billings = AwsBilling.all

    render json: @aws_billings
  end

  # GET /aws_billings/1
  def show
    render json: @aws_billing
  end

  # POST /aws_billings
  def create
    @aws_billing = AwsBilling.new(aws_billing_params)

    if @aws_billing.save
      render json: @aws_billing, status: :created, location: @aws_billing
    else
      render json: @aws_billing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_billings/1
  def update
    if @aws_billing.update(aws_billing_params)
      render json: @aws_billing
    else
      render json: @aws_billing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_billings/1
  def destroy
    @aws_billing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_billing
      @aws_billing = AwsBilling.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aws_billing_params
      params.require(:aws_billing).permit(:summary_cost, :detailed_billing)
    end
end
