class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|

      t.timestamps
    end
  end
end
