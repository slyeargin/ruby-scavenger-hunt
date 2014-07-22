require 'test_helper'
require 'vector_distance'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @v = MyVector[1,1]
    @v2 = MyVector[0,0]
    @v3 = MyVector[1,2]
    @v4 = MyVector[1,2,3]
  end

  def test_distance
    distance = @v.distance(@v3)
    assert_equal(1.0, distance)
  end

  def test_vector_plus_integer
    assert_equal(@v, @v2+1)
  end

  def test_vector_shovel_integer
    assert_equal(@v4, @v3 << 3)
  end

  def test_calculate_angle_in_rad_class
    angle = MyVector.calculate_angle(@v, @v3)
    assert_equal(0.6061378223872939, angle)
  end

  def test_calculate_angle_in_rad_instance
    angle = @v.calculate_angle(@v3)
    assert_equal(0.6061378223872939, angle)
  end

end
