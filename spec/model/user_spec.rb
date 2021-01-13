require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'rspec', email: 'rspec@test.com', password: '123456') }
  let(:transactions) { User.reflect_on_association(:transactions).macro }
  let(:groups) { User.reflect_on_association(:groups).macro }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'checks correct association with transactions' do
    expect(transactions).to eq(:has_many)
  end

  it 'checks correct association with groups' do
    expect(groups).to eq(:has_many)
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without email' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without password' do
    user.password = ''
    expect(user).to_not be_valid
  end
end
