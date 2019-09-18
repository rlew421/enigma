require "./test/test_helper"

class OffsetTest < Minitest::Test
  def setup
    @user_date = Offset.new("040895")
    @current_date = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @user_date
    assert_instance_of Offset, @current_date
  end

  def test_it_can_accept_user_date
    assert_equal "040895", @user_date.date
  end

  def test_it_can_generate_current_date
    assert_equal "170919", @current_date.date
  end
end
