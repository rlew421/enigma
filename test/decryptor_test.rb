require "./test/test_helper"

class DecryptorTest < Minitest::Test
  def setup
    @decryptor = Decryptor.new("02715", "040895")
  end

  def test_it_exists
    assert_instance_of Decryptor, @decryptor
  end

  def test_it_calculates_backward_values
    keys = [02, 27, 71, 15]
    assert_equal [-2, -27, -71, -15], @decryptor.calculate_backward_values(keys)
  end

  def test_it_calculates_backward_shift
    assert_equal [-3, -27, -73, -20], @decryptor.calculate_backward_shift
  end

  def test_it_decrypts_letters
    letter = "d"
    number = 73
    assert_equal "w", @decryptor.decrypt_letters(letter, number)
  end

  def test_it_backward_rotates_characters
    letters = ['k', 'e', 'd', 'e']
    expected = ['h', 'e', 'l', 'l']
    numbers = [-3, -27, -73, -20]
    assert_equal expected, @decryptor.backward_rotate_characters(letters, numbers)
  end

  def test_it_decrypts_message
    assert_equal "hello world!", @decryptor.decrypt_message("keder ohulw!", "02715", "040895")
  end
end
