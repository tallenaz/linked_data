require 'spec_helper'
require 'PerformanceGroup'

describe 'a PerformanceGroup' do
  it 'can instantiate' do
    foo = PerformanceGroup.new
    expect(foo).to be_kind_of PerformanceGroup
  end
  it 'has a name' do
    foo = PerformanceGroup.new
    foo.name = 'John Lennon'
    expect(foo.name).to eq 'John Lennon'
  end
end
