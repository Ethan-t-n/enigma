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

  it 'has a message, key, and date' do
    expect(@encrypt.message).to eq "hello world"
    expect(@encrypt.key).to eq "02715"
    expect(@encrypt.date).to eq "040895"
  end

  it 'uses todays date' do
    encrypt = Encrypt.new("hello world", "02715")

    date_string = Date::today.strftime.delete("-")
    expected = date_string[-2..-1] + date_string[-4..-3] + date_string[-6..-5]

    expect(encrypt.date).to eq expected
  end

end
