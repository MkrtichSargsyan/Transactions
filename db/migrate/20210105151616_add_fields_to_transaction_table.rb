# frozen_string_literal: true

class AddFieldsToTransactionTable < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :name, :string
    add_column :transactions, :amount, :integer
    add_reference :transactions, :author, foreign_key: { to_table: :users }
  end
end
