require 'spec_helper'
describe 'puntonthird' do
  context 'with default values for all parameters' do
    it { should contain_class('33') }
  end
end