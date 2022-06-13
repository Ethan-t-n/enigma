require './spec/spec_helper.rb'

describe Decrypt do
  before(:each) do
    @decrypt = Decrypt.new("keder ohulw", "02715", "040895")
  end

  it 'exists' do
    expect(@decrypt).to be_instance_of Decrypt
  end

  it 'has a collection of characters' do
    expect(@decrypt.characters).to eq ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
  end

  it 'uses ciphertext, key and date' do
    expect(@decrypt.ciphertext).to eq "keder ohulw"
    expect(@decrypt.key).to eq "02715"
    expect(@decrypt.date).to eq "040895"
  end

  it 'uses todays date' do
    decrypt = Decrypt.new("keder ohulw", "02715")
    date_string = Date::today.strftime.delete("-")
    expected = date_string[-2..-1] + date_string[-4..-3] + date_string[-6..-5]
    expect(decrypt.date).to eq expected
  end

  it 'a random key' do
    decrypt = Decrypt.new("keder ohulw")
    expect(decrypt.key.class).to be String
    expect(decrypt.key.length).to be 5
  end

end
