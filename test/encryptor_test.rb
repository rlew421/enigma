require "./test/test_helper"

class EncryptorTest < Minitest::Test
  def setup
    @encryptor = Encryptor.new("hello world!", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Encryptor, @encryptor
  end

  def test_it_calculates_total_shift
    assert_equal [3, 27, 73, 20], @encryptor.calculate_total_shift
  end

  def test_it_can_split_message
    expected = [["h", "e", "l", "l"], ["o"," ", "w", "o"], ["r", "l", "d", "!"]]
    assert_equal expected, @encryptor.split_message
  end

  def test_it_can_encrypt_letters
    letter = "l"
    number = 73
    assert_equal "d", @encryptor.encrypt_letters(letter, number)
  end

  def test_it_can_rotate_characters
    numbers = [3, 27, 73, 20]
    letters = ['h', 'e', 'l', 'l']
    expected = ['k', 'e', 'd', 'e']
    assert_equal expected, @encryptor.rotate_characters(letters, numbers)
  end

  def test_it_only_shifts_letters
    skip
    assert_equal
  end

  def test_it_encrypts_message
    assert_equal "keder ohulw!", @encryptor.encrypt_message("hello world!", "02715", "040895")
  end
end
