# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'rspec', email: 'rspec@test.com', password: '123456') }
  let(:group) { Group.create(name: 'rspec', user_id: user.id) }

  it 'is valid with valid attributes' do
    expect(group).to be_valid
  end

  it 'is not valid without a name' do
    group.name = ''
    expect(group).to_not be_valid
  end

  it 'is not valid without a user' do
    group.user_id = nil
    expect(group).to_not be_valid
  end

  it 'check correct association between user and groups' do
    user.groups.should include(group)
  end
end
