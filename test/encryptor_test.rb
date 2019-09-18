require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma"
require "./lib/key"
require "./lib/offset"
require "./lib/shift"
require "./lib/encryptor"

class EncryptorTest < Minitest::Test
  def setup
    @encryptor = Encryptor.new("hello world", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Encryptor, @encryptor
  end

  def test_it_calculates_total_shift
    assert_equal [3, 27, 73, 20], @encryptor.calculate_total_shift
  end
end
