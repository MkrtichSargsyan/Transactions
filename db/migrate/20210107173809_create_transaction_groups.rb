# frozen_string_literal: true

class CreateTransactionGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_groups do |t|
      t.integer :transaction_id
      t.integer :group_id

      t.timestamps
    end
  end
end
