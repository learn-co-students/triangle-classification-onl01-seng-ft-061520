class Triangle
  # triangle code
  attr_accessor :a, :b, :c, :kind
  def initialize(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a+b <= c || a+c <= b || b+c <= a
      raise TriangleError
    else
      if a == b && b == c
        @kind = :equilateral
      elsif a == b || b == c || a == c
        @kind = :isosceles
      elsif a != b && b != c && a != c
        @kind = :scalene
      end
    end
  end
 
  class TriangleError < StandardError
    "This triangle is not legal"
  end
end