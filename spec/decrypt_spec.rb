require './spec/spec_helper.rb'

describe Decrypt do
  before(:each) do
    @decrypt = Decrypt.new("keder ohulw", "02715", "040895")
  end

  it 'exists' do
    expect(@decrypt).to be_instance_of Decrypt
  end

  it '2. has a collection of characters' do
    expect(@decrypt.characters).to eq ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
  end

end
