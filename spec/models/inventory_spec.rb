require 'spec_helper'

describe Inventory do
  
  it { should have_valid(:title).when('Steak', 'Pasta') }
  it { should have_valid(:description).when('Juicy', 'Italian') }
  it { should have_valid(:quantity).when('1', '30') }
  
  let(:blanks){[nil, '']}
  it { should_not have_valid(:title).when(*blanks) }
  it { should_not have_valid(:description).when(*blanks) }
  it { should_not have_valid(:quantity).when(*blanks) }

end
