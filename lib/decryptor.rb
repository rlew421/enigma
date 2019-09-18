class Decryptor
  attr_reader :shift

  def initialize(key, offset)
    @shift = Shift.new(key, offset)
    @alphabet = ("a".."z").to_a << " "
  end

  def calculate_backward_values(values)
    backward_values = []
    values.map do |value|
      backward_values << (value > 0 ? -value : value)
    end
    backward_values
  end

  def calculate_backward_shift
    backward_keys = calculate_backward_values(@shift.shift_keys)
    backward_offsets = calculate_backward_values(@shift.shift_offset)
    [backward_keys, backward_offsets].transpose.map do |backward_combo|
      backward_combo.sum
    end
  end

  # def encrypt_message(message, key, offset)
  #   keys = @shift.shift_keys
  #   offsets = @shift.shift_offset
  #   shifted_message = split_message.map do |letter_group|
  #     rotate_characters(letter_group, calculate_total_shift).join
  #   end
  #   shifted_message.join
  # end
end
