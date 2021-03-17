require "test_helper"

class UserBalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_balance = user_balances(:one)
  end

  test "should get index" do
    get user_balances_url, as: :json
    assert_response :success
  end

  test "should create user_balance" do
    assert_difference('UserBalance.count') do
      post user_balances_url, params: { user_balance: { balance: @user_balance.balance, balanceAchieve: @user_balance.balanceAchieve, user_id: @user_balance.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_balance" do
    get user_balance_url(@user_balance), as: :json
    assert_response :success
  end

  test "should update user_balance" do
    patch user_balance_url(@user_balance), params: { user_balance: { balance: @user_balance.balance, balanceAchieve: @user_balance.balanceAchieve, user_id: @user_balance.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_balance" do
    assert_difference('UserBalance.count', -1) do
      delete user_balance_url(@user_balance), as: :json
    end

    assert_response 204
  end
end
