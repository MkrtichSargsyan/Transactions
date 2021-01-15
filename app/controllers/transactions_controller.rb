# frozen_string_literal: true

class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]

  def index
    temp_var = current_user.transactions.includes(:groups).ordered_desc
    @transactions = temp_var
    @transactions = temp_var.select { |tr| tr.groups.empty? } unless params[:icon]

    @total_amount = @transactions.reduce(0) { |sum, cur| sum + cur.amount }
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      @transaction.transaction_groups.create(show_group_id)
      redirect_to user_transaction_path(current_user, @transaction), notice: 'You successfully created a new transaction.'
    else
      render 'new'
    end
  end

  def update
    if @transaction.update(transaction_params)
      if show_group_id[:group_id]
        if @transaction.groups.empty?
          @transaction.transaction_groups.create(show_group_id)
        else
          @transaction.transaction_groups.update(show_group_id)
        end
      end
      redirect_to user_transaction_path, notice: 'Transaction updated'
    else
      render 'edit'
    end
  end

  def destroy
    if @transaction.destroy
      redirect_to user_transactions_path(icon: true), notice: 'Transaction deleted'
    else
      redirect_to root_path
    end
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end

  def show_group_id
    params.require(:transaction).permit(:group_id)
  end
end
