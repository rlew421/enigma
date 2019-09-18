require "./test/test_helper"

class KeyTest < Minitest::Test
  def setup
    @user_key = Key.new(2715)
    @random_key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @user_key
  end

  def test_it_can_take_user_input_number
    assert_equal "02715", @user_key.number
  end

  def test_it_can_be_generated_randomly
    assert_equal 5, @random_key.number.length
  end

  def test_it_can_generate_random_number
    assert_instance_of Integer, @random_key.generate_number
  end

  def test_it_is_five_digits
    assert_equal 5, @user_key.number.length
    assert_equal 5, @random_key.number.length
  end
end
