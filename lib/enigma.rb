class Enigma
  attr_reader :alphabet, :date

  def initialize
    @key = Key.new
    @date = Offset.new.date
    @encryptor = Encryptor.new(message, key, offset)
    @message = @encryptor.message
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message = @message.downcase, key = @key, offset = @date)
     {
     encryption: @encryptor.encrypt_message(message, key, offset),
     key: key,
     date: offset
     }
  end
end
