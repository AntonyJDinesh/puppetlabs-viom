require 'spec_helper'
describe 'viom' do
  context 'with default values for all parameters' do
    it { should contain_class('viom') }
  end
end
