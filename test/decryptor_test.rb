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

  # def test_it_encrypts_message
  #   assert_equal "keder ohulw!", @encryptor.encrypt_message("hello world!", "02715", "040895")
  # end
end
