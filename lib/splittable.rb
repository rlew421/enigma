module Splittable
  def split_message(message)
    message.split(//).each_slice(4).to_a
  end

  def rotate_characters(letters, numbers)
    letters.map.with_index do |letter, index|
      encrypt_letters(letter, numbers[index])
    end
  end  
end
