require 'rails_helper'

RSpec.describe 'User controller', type: :request do
  let(:user1) { User.create(name: 'Mike', email: 'mike@gmail.com', password: 'aaaaaa') }
  let(:transaction1) { Transaction.create(name: 'string', amount: 12, author_id: user1.id) }
  let(:transaction2) { Transaction.create(name: 'string', amount: 1, author_id: user1.id) }

  describe 'show action' do
    it 'show the user page' do
      user = User.find(user1.id)
      expect(user).to eq(user1)
    end

    it 'should show most expansive transaction' do
      expect(user1.transactions.most_expensive_transaction[0] == transaction1)
    end

    it 'should show most cheapest transaction' do
      expect(user1.transactions.most_cheapest_transaction[0] == transaction2)
    end

  end
 
end