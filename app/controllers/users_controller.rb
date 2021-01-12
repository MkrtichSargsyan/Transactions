class UsersController < ApplicationController
  def show; end

  def user_transactions
    @user_transactions = current_user.transactions
  end

  def new_user_transaction; end
end
