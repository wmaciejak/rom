require 'spec_helper'

describe Mapper, '#new_object' do
  subject { mapper.new_object(attributes) }

  include_context 'Mapper'

  let(:attributes) { Hash[:id => 1, :name => 'Jane'] }

  it { should eql(model.new(attributes)) }
end
