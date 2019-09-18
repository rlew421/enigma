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
end
