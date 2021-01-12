class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }

  has_many :groups
  has_many :transactions, class_name: 'Transaction', foreign_key: 'author_id'

end

