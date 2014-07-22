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
    theta = (self.inner_product other_vector)/((Math.sqrt(self[1]**2 + other_vector[1]**2)) + (Math.sqrt(self[0]**2 + other_vector[0]**2)))
    radians = Math.acos(theta)
  end

  def self.calculate_angle(v1, v2)
    theta = (v1.inner_product v2)/((Math.sqrt(v1[1]**2 + v2[1]**2)) + (Math.sqrt(v1[0]**2 + v2[0]**2)))
    radians = Math.acos(theta)
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
