require 'spec_helper'

describe Customer do
  let!(:customer) { FactoryGirl.create(:customer) }

  it { should have_valid(:name).when('David') }
  it { should_not have_valid(:name).when(nil, '')}


  it { should have_valid(:phone_no).when('4133203613')}
  it { should_not have_valid(:phone_no).when(nil, '', '413-320-3613', 'abcde', '8675309')}


  it { should have_valid(:email).when('davew1982@gmail.com', 'helen.c.hood@gmail.com')}
  it { should_not have_valid(:email).when(nil, '', '4535235', 'd@d', 'user@mycom', 'usermy.com', 'user', '.com', 'my.com')}
  it { should validate_uniqueness_of(:email)}

  it { should have_many(:pieces) }
  it { should have_many(:favorite_collections) }

  describe '.calc_total_spent_in_cents' do
    it 'should return the total spent in cents' do
      piece1 = FactoryGirl.create(:piece, customer_id: customer.id, price_in_cents: 15000)
      piece2 = FactoryGirl.create(:piece, customer_id: customer.id, price_in_cents: 10000)
      piece3 = FactoryGirl.create(:piece, customer_id: customer.id, price_in_cents:  4000)

      expect(customer.calc_total_spent_in_cents).to eq 29000
    end
  end
end
