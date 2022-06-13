require './spec/spec_helper.rb'

describe Encrypt do
  before(:each) do
    @encrypt = Encrypt.new("hello world", "02715", "040895")
  end

  it 'exists' do
    expect(@encrypt).to be_instance_of Encrypt
  end
end
