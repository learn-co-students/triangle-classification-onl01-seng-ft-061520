class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides << side_1 << side_2 << side_3
  end
  
  def kind
    if @sides.max >= (@sides.min(2)[0] + @sides.min(2)[1]) || @sides.any?{|s| s <= 0}
      raise TriangleError
    else
      if @sides.uniq.length == 1
        return :equilateral
      elsif @sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    def alert
      puts "You are not a triangle!"
    end
  end
end
