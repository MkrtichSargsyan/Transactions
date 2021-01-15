# frozen_string_literal: true

class UsersController < ApplicationController
  def show; end

  def show
    @most_expensive_transaction = current_user.transactions.most_expensive_transaction[0]
    @most_cheapest_transaction = current_user.transactions.most_cheapest_transaction[0]
  end

  def user_transactions
    @user_transactions = current_user.transactions
  end

  def new_user_transaction; end
end
