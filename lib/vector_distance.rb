require 'matrix'

class VectorSubclass < Vector

  def distance(to_vector)
    from_vector = covector(self)
    to_vector = covector(to_covector)
    Math.sqrt((from_vector[0]-to_vector[0])**2 + ((from_vector[1]-to_vector[1])**2))
  end

end
