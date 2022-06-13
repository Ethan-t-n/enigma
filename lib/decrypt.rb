class Decrypt < MethodsStore

  def initialize(ciphertext, key = nil, date = nil)
    @ciphertext = ciphertext.downcase
    super(key, date)
  end

end
