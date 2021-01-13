require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:user) { User.create(name: 'rspec', email: 'rspec@test.com', password: '123456') }
  let(:group) { Group.create(name: 'rspec', user_id: user.id) }
  let(:transaction) { Transaction.create(name: 'string', amount: 12, author_id: user.id) }

  it 'is valid with valid attributes' do
    expect(transaction).to be_valid
  end

  it 'is not valid without a name' do
    transaction.name = ''
    expect(transaction).to_not be_valid
  end

  it 'is not valid without a user' do
    transaction.author_id = nil
    expect(transaction).to_not be_valid
  end

  it 'is not valid without a user' do
    transaction.amount = nil
    expect(transaction).to_not be_valid
  end

  it 'check correct association between user and transaction' do
    user.transactions.should include(transaction)
  end
  
end
