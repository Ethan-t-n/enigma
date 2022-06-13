class Encrypt < MethodsStore

    def initialize(message, key = nil, date = nil)
      @message = message.downcase
      super(key, date)
    end

    def characters
      @characters = ("a".."z").to_a << " "
    end

    def encrypt
      @input_array = @message.split("")
      @output_array = []
      change_text
      @output_array.join
    end

    def output
    {
      encryption: encrypt,
      key: @key,
      date: @date
    }
    end
end
