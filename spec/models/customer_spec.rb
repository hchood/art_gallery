require 'spec_helper'

describe Customer do
  it { should have_valid(:name).when('David') }
  it { should_not have_valid(:name).when(nil, '')}

  
  it { should have_valid(:phone_no).when('4133203613')}
  it { should_not have_valid(:phone_no).when(nil, '', '413-320-3613', 'abcde', '8675309')}


  it { should have_valid(:email).when('davew1982@gmail.com', 'helen.c.hood@gmail.com')}
  it { should_not have_valid(:email).when(nil, '', '4535235', 'd@d', 'user@mycom', 'usermy.com', 'user', '.com', 'my.com')}
  it { should validate_uniqueness_of(:email)}
end