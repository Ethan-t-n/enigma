require './spec/spec_helper.rb'

describe Decrypt do
  before(:each) do
    @decrypt = Decrypt.new("keder ohulw", "02715", "040895")
  end

  it 'exists' do
    expect(@decrypt).to be_instance_of Decrypt
  end

end
