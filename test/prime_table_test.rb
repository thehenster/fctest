require 'test/unit'
require_relative '../lib/fctest'


class PrimeTableTest < Test::Unit::TestCase

  # the array dimensions should be one larger than the number of primes.. for the 'headers'..
  def test_array
    ary = Fctest::PrimeTable.new(3).array
    assert_equal Array, ary.class
    assert_equal Array, ary[0].class
    assert_equal 4, ary.size
    assert_equal 4, ary[0].size
  end

  # the whitespace padding should adjust according to the largest number held in the array..
  def test_highest_result
    # the number of the digits in the number + 4
    assert_equal 9, Fctest::PrimeTable.new(65).cell_size
  end

end