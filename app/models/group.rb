class Group < ApplicationRecord
  belongs_to :user
  has_many :transaction_groups, dependent: :destroy
  has_many :transactions, through: :transaction_groups, source: :transfer

  scope :sorted_ASK, -> { order(name: :asc) }
end
