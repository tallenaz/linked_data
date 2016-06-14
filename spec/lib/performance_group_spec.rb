require 'spec_helper'
require 'PerformanceGroup'

describe 'a PerformanceGroup' do
  before :each do
    @foo = PerformanceGroup.new
  end
  it 'can instantiate' do
    expect(@foo).to be_kind_of PerformanceGroup
  end
  it 'has a name' do
    @foo.name = 'John Lennon'
    expect(@foo.name).to eq 'John Lennon'
  end
  it 'has a list of albums' do
    albums = ['Hard Days Night', 'White Album', "I don't know"]
    @foo.albums = albums
    expect(@foo.list_albums).to eq "Hard Days Night\nWhite Album\nI don't know\n"
  end
end
