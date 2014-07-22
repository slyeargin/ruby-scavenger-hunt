require 'test_helper'
require 'vector_distance'

class ExampleTest < MiniTest::Unit::TestCase

  def setup
    @v = Vector.new[1,1]
  end

  def test_vector_plus_integer
    integer = 1
    @v += integer
    assert_equal(Vector[2,2], @v)
  end

end
