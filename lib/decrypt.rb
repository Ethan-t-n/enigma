class Decrypt < MethodsStore

  def initialize(ciphertext, key = nil, date = nil)
    @ciphertext = ciphertext.downcase
    super(key, date)
  end

  def decrypt
    @input_array = @ciphertext.split("")
    @output_array = []
    @shifts.transform_values! { |shift| shift * -1 }
    change_text
    @output_array.join
  end

end
