require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'rspec', email: 'rspec@test.com', password: '123456') }
  let(:group) { Group.create(name: 'rspec', user_id:user.id) }
  let(:transactions) { Transaction.create(name:'string',amount:'12',author_id:user.id)}

end