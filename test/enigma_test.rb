require "./test/test_helper"

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @date = Time.new.strftime("%d%m%y")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
    "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_current_date
    assert_equal @date, @enigma.date
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
end
