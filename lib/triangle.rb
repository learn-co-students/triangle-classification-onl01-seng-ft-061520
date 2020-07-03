class Triangle
  attr_reader :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind #equilateral(same size), isosceles(two same), scalene(diff size)
    validate_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene
    end
  end

# In mathematics, the triangle inequality states that for any triangle, 
# the sum of the lengths of any two sides must be greater than 
# or equal to the length of the remaining side.

# z <= x+y

 #  z == x == y = equilateral
  #  z == x <= y = isosceles
  #  z <> x <> y = scalene


  def validate_triangle
    triangle = [(x + y > z), (x + z > y), (y + z > x)]
    [x, y, z].each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
