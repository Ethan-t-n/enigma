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
    #I finally found a new way to test
    #without making the line ridiculously long
  it 'uses todays date' do
    encrypt = Encrypt.new("hello world", "02715")
    date_string = Date::today.strftime.delete("-")
    expected = date_string[-2..-1] + date_string[-4..-3] + date_string[-6..-5]
    expect(encrypt.date).to eq expected
  end

  it 'generates a random key' do
    encrypt = Encrypt.new("hello world")
    expect(encrypt.key.class).to be String
    expect(encrypt.key.length).to be 5
  end

  it 'has shift keys' do
    expected = {A: 2, B: 27, C: 71, D: 15}
    expect(@encrypt.shift_keys).to eq expected
  end

  it 'has offsets' do
    expected = {A: 1, B: 0, C: 2, D: 5}
    expect(@encrypt.offsets).to eq expected
  end

  it 'has shifts' do
    expected = {A: 3, B: 27, C: 73, D: 20}
    expect(@encrypt.shifts).to eq expected
  end

  it 'can encrypt' do
    expect(@encrypt.encrypt).to eq "keder ohulw"
  end

  it 'is a hash' do
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(@encrypt.output).to eq expected
  end

end
