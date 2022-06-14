require './spec/spec_helper.rb'

describe Crack do
  before(:each) do
    @crack = Crack.new("ufvgageoufronmehazzcvlfopdmtgdafuyvoizhtachtsybiuyvbummpowfwjlt.o", "130622")
  end

  it 'exists' do
    expect(@crack).to be_instance_of Crack
  end
end
