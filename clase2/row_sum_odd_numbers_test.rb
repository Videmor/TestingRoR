require 'minitest/autorun'
require './sum_odd_numbers'

class SumOddNumbersTest < Minitest::Test

  def test_sum_odd_numbers_test
    assert_equal 1, row_sum_odd_numbers(1)
    assert_equal 8, row_sum_odd_numbers(2)
    assert_equal 2197, row_sum_odd_numbers(13)
    assert_equal 6859, row_sum_odd_numbers(19)
    assert_equal 68921, row_sum_odd_numbers(41)
  end

end
