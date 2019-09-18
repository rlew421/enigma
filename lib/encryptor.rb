class Encryptor
  attr_reader :message, :shift

  def initialize(message, key, offset)
    @message = message
    @shift = Shift.new(key, offset)
  end

  def calculate_total_shift
    key_integers = @shift.shift_keys
    offset_integers = @shift.shift_offset
    [key_integers, offset_integers].transpose.map do |combo|
      combo.sum
    end
  end

  def split_message
    message = @message
    message.split(//).each_slice(4).to_a
  end

  # def encrypt_message(message, key, offset)
  #   keys = @shift.shift_keys
  #   offsets = @shift.shift_offset
  #   require 'pry'; binding.pry
  #   split_message.map do |group|
  #
  #   end
  # end
end
