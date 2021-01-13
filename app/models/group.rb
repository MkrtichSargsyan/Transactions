class Group < ApplicationRecord
  has_one_attached :icon

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }

  belongs_to :user
  has_many :transaction_groups, dependent: :destroy
  has_many :transactions, through: :transaction_groups, source: :transfer

  scope :sorted_ASK, -> { order(name: :asc) }
end
