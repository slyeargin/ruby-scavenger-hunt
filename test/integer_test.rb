require 'test_helper'
require 'integer_factors'

class FactorsTest < MiniTest::Unit::TestCase

  def setup

  end

  def test_factors
    answer = [2,3,4,6]
    integer = 12
    assert_equal(answer, integer.factors)
  end

end
