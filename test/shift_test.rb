require "./test/test_helper"

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new("02715", "040895")
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_can_shift_keys
    assert_equal [02, 27, 71, 15], @shift.shift_keys
  end

  def test_it_can_shift_offset
    assert_equal [1, 0, 2, 5], @shift.shift_offset
  end
end
