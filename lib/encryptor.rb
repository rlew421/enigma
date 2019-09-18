class Encryptor
  attr_reader :message, :shift

  def initialize(message, key, offset)
    @message = message
    @shift = Shift.new(key, offset)
    @alphabet = ("a".."z").to_a << " "
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

  def encrypt_letters(character, number)
    if @alphabet.include?(character)
      index = @alphabet.find_index(character)
      rotated_character = @alphabet.rotate(number)
      rotated_character[index]
    else
      character
    end
  end

  def rotate_characters(letters, numbers)
    letters.map.with_index do |letter, index|
      encrypt_letters(letter, numbers[index])
    end
  end

  def encrypt_message(message, key, offset)
    keys = @shift.shift_keys
    offsets = @shift.shift_offset
    split_message.map do |letter_group|
      rotate_characters(letter_group, calculate_total_shift).join
    end
  end
end
