class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_triangle_inequality?(side_a, side_b, side_c)
    (side_a + side_b) > side_c
  end

  def valid?
    if side1.positive? && side2.positive? && side3.positive?
      if valid_triangle_inequality?(side1, side2, side3) && valid_triangle_inequality?(side1, side3, side2) && valid_triangle_inequality?(side2, side3, side1)
        true
      else
        false
      end
    else
      false
    end
  end

  def kind
    if valid?
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 ||
            side2 == side3 ||
            side1 == side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
