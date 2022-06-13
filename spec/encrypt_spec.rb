require './spec/spec_helper.rb'

describe Encrypt do
  before(:each) do
    @encrypt = Encrypt.new("hello world", "02715", "040895")
  end

  it 'exists' do
    expect(@encrypt).to be_instance_of Encrypt
  end

  it 'has a collection of characters' do
    expect(@encrypt.characters).to eq ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
  end
end
