require 'matrix'

class MyVector < Vector

  # called by MyVector[x,y].distance(Vector[2,2])
  def distance(to_vector)
    Math.sqrt((self[0]-to_vector[0])**2 + ((self[1]-to_vector[1])**2))
  end

end
