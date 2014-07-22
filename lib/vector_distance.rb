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

end
