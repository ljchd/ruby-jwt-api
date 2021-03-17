class UserBalancesController < ApplicationController
  before_action :set_user_balance, only: [:show, :update, :destroy]

  # GET /user_balances
  def index
    @user_balances = UserBalance.all

    render json: @user_balances
  end

  # GET /user_balances/1
  def show
    render json: @user_balance
  end

  # POST /user_balances
  def create
    @user_balance = UserBalance.new(user_balance_params)

    if @user_balance.save
      render json: @user_balance, status: :created, location: @user_balance
    else
      render json: @user_balance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_balances/1
  def update
    if @user_balance.update(user_balance_params)
      render json: @user_balance
    else
      render json: @user_balance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_balances/1
  def destroy
    @user_balance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_balance
      @user_balance = UserBalance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_balance_params
      params.require(:user_balance).permit(:balance, :balanceAchieve, :user_id)
    end
end
