require 'minitest/autorun'
require './calculate'

class CalculateTest < Minitest::Test

  def test_add
    assert_equal 9, add(4, 5)
    assert_equal -5, add(-10, 2, 3)
    assert_equal 0, add(0, 0, 0, 0)
  end

  def test_subtract
    assert_equal -1, subtract(4, 5)
    assert_equal -15, subtract(-10, 2, 3)
  end

  def test_calculate
    assert_equal 9, calculate(4, 5, add: true)
    assert_equal -1, calculate(4, 5, subtract: true)
    assert_equal 8, calculate(5, 3)
  end

end
