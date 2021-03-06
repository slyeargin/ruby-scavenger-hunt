class Integer

  def factors
    factors = []
    1.upto(self) do |index|
      if self % index == 0 && index != 1 && index != self
        factors << index
        factors << self / index
      end
    end
    factors.uniq!
    factors.sort!
  end

end
