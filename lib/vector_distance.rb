require 'matrix'

class MyVector < Vector

  # called by MyVector[x,y].distance(Vector[2,2])
  def distance(to_vector)
    Math.sqrt((self[0]-to_vector[0])**2 + ((self[1]-to_vector[1])**2))
  end

  def self.distance(a, *more)
    if more.length < 1
      return nil
    end
    stash = []
    stash << a
    distance_stash = 0
    more.each do |v|
      stash << v
    end
    for v in (0..stash.length-1)
      unless v == 0
        distance_stash += stash[v].distance(stash[v-1])
      end
    end
    distance_stash
  end

  def calculate_angle(other_vector)
    numerator = self.inner_product(other_vector)
    denominator = self.magnitude * other_vector.magnitude
    Math::acos(numerator/denominator).round(10)
  end

  def self.calculate_angle(v1, v2)
    v1.calculate_angle(v2)
  end

  def +(a)
    vector = self.to_a
    for v in (0..vector.length-1)
      vector[v] += a
    end
    MyVector.elements(vector)
  end

  def <<(a)
    MyVector.elements(self.to_a << a)
  end

end
