class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]

  def index
    @transactions = current_user.transactions
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
      redirect_to user_transaction_path, notice: 'Transaction updated'
    else
      render 'edit'
    end
  end

  def destroy
    @transaction.destroy
    redirect_to user_transactions_path, notice: 'Transaction deleted'
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
