class Triangle
  def kind(side1, side 2, side 3)
    if tri_invalid
      raise TriangleError
    elsif side1 == side2 && side1 == side3
      return :equilateral
    elsif (side1 == side2 && side1 != side3) || (side2 == side3 && side2 != side1) || (side1 == side3 && side1 != side2)
      return :isosceles
    else
      return :scalene
    end
  end
  def tri_invalid(side1, side 2, side3)
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      return true
    elsif side1 + side2 < side 3
      return true
    elsif side2 + side3 < side 1
      return true
    elsif side1 + side3 < side 2
      return true
    else
      return false
    end
  end
  class TriangleError < StandardError
    puts "Invalid Triangle"
  end
end
