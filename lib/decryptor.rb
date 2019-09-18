require './lib/splittable'

class Decryptor
  include Splittable
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

  def decrypt_letters(character, number)
    if @alphabet.include?(character)
      index = @alphabet.find_index(character)
      rotated_character = @alphabet.rotate(number)
      rotated_character[index]
    else
      character
    end
  end

  def backward_rotate_characters(letters, numbers)
    letters.map.with_index do |letter, index|
      decrypt_letters(letter, numbers[index])
    end
  end

  def decrypt_message(shifted_message, key, offset)
    key = @shift.shift_keys
    offset = @shift.shift_offset
    backward_shifted_message = split_message(shifted_message).map do |letter_group|
      backward_rotate_characters(letter_group, calculate_backward_shift).join
    end
    backward_shifted_message.join
  end
end
