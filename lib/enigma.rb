class Enigma

    def initialize
    end

    def encrypt(message, key = nil, date = nil)
      Encrypt.new(message, key, date).output
    end

    def decrypt(ciphertext, key = nil, date = nil)
      Decrypt.new(ciphertext, key, date).output
    end

end
