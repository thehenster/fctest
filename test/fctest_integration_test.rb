require 'test/unit'

class FctestIntegrationTest < Test::Unit::TestCase

  def setup
    @command = File.expand_path(File.join(File.dirname(__FILE__), "../bin/fctest"))
  end

  def test_no_n_argument
    assert_equal "Usage: fctest {n}\n", %x[#{@command}]
  end

  def test_first_three_primes
    expected = ""
    expected<< "      2     3     5     \n"
    expected<< "2     4     6     10    \n"
    expected<< "3     6     9     15    \n"
    expected<< "5     10    15    25    \n"
    
    assert_equal expected, %x[#{@command} 3]
  end

end