require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma"
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_encrypts_with_key_and_date
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_decrypts_with_key_and_date
    expected = {
    decryption: "hello world",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_use_current_date_to_encrypt
    skip
    encrypted = {}
    assert_equal encrypted, @enigma.encrypt("hello world", "02715")
  end

  def test_it_can_use_current_date_to_decrypt
    skip
    decrypted = {}
    assert_equal decrypted, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_it_can_generate_random_key_and_use_current_date_to_encrypt
    skip
    encrypted = {}
    assert_equal encrypted, @enigma.encrypt("hello world")
  end
end
