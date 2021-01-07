class TransactionGroup < ApplicationRecord
  belongs_to :transfer, class_name: 'Transaction'
  belongs_to :group
end
