require 'test/unit'
require_relative '../lib/fctest'


class PrimeTableTest < Test::Unit::TestCase

  def test_calculating_the_primes
    assert_equal [2,3,5,7,11], Fctest::PrimeTable.new(5).primes
  end

end