class ChangeTransactionId < ActiveRecord::Migration[6.0]
  def change
    rename_column :transaction_groups, :transaction_id, :transfer_id
  end
end
