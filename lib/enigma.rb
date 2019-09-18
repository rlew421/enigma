class Enigma
  attr_reader :alphabet, :date

  def initialize
    @key = Key.new
    @date = Offset.new.date
  end

  def encrypt(message = @message.downcase, key = @key, date = @date)
      {
      encryption: encrypt_message(message, key, date),
      key: key,
      date: date
      }
  end

  def decrypt(ciphertext = @message.downcase, key = @key, date = @date)
  {
    decryption: decrypt_message(ciphertext, key, date),
    key: key,
    date: date
  }
  end
end
