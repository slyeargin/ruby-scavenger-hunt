require 'matrix'

class VectorSubclass < Vector

  def distance(to_vector)
    Math.sqrt((self[0]-to_vector[0])**2 + ((self[1]-to_vector[1])**2))
  end

end
