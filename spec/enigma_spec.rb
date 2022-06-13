require './spec/spec_helper.rb'

describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_a Enigma
  end

  it 'encrypts a message with a key and date' do
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq expected
  end

  it 'decrypts a message with a key and date' do
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq expected
  end

  it 'encrypt and decrypt using todays date' do
    encrypted = @enigma.encrypt("hello world", "02715")
    expect(@enigma.decrypt(encrypted[:encryption], "02715")[:decryption]).to eq "hello world"
  end

  it 'encrypt and decrypt using random key' do
    encrypted = @enigma.encrypt("hello world")
    expect(@enigma.decrypt(encrypted[:encryption], encrypted[:key])[:decryption]).to eq "hello world"
  end
end
