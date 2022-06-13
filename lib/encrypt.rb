class Encrypt < MethodsStore

    def initialize(message, key = nil, date = nil)
      @message = message.downcase
      super(key, date)
    end

    def characters
      @characters = ("a".."z").to_a << " "
    end




end
