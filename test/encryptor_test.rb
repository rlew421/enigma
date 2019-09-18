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

  def test_it_can_rotate_characters

  end

  def test_it_encrypts_message
    assert_equal "keder ohulw", @encryptor.encrypt_message("hello world!", "02715", "040895")
  end

  def test_it_only_shifts_letters
    assert_equal
  end
end
