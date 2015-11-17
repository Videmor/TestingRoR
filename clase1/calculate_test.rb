require 'minitest/autorun'

require './calculate'

class CalculateTest < Minitest::Test

  # add(4, 5) returns 9
  # add(-10, 2, 3) returns -5
  # add(0, 0, 0, 0) returns 0
  # subtract(4, 5) returns -1
  # subtract(-10, 2, 3) returns -15
  # calculate(4, 5, add: true) returns 9
  # calculate(4, 5, subtract: true) returns -1
  def test_calculate
    assert_equal 9, add(4,5)
    assert_equal -5, add(-10,2,3)
    assert_equal 0, add(0,0,0,0)

    assert_equal -1, subtract(4, 5)
    assert_equal -15, subtract(-10, 2, 3)

    assert_equal 9, calculate(4,5, add: true)
    assert_equal -1, calculate(4,5, subtract: true)
  end

end
