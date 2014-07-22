require 'test_helper'
require 'vector_distance'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @v = MyVector[1,1]
    @v2 = MyVector[0,0]
    @v3 = MyVector[1,2]
    @v4 = MyVector[1,2,3]
  end

  def test_vector_plus_integer
    assert_equal(@v, @v2+1)
  end

  def test_vector_shovel_integer
    assert_equal(@v4, @v3 << 3)
  end

end
