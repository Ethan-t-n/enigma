class MethodsStore
  attr_reader :characters,
  :ciphertext,
  :date,
  :key,
  :message,
  :offsets,
  :shifts,
  :shift_keys


  def initialize(key, date)
    generate_characters
    assign_date(date)
    assign_key(key) unless self.class == Crack
    generate_shift_keys unless self.class == Crack
    generate_offsets unless self.class == Crack
    generate_shifts unless self.class == Crack
  end

end
