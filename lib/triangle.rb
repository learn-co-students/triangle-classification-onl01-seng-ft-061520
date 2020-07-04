require "pry"
class Triangle

  attr_reader :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_3 = side_3
    @side_2 = side_2
    @side_1 = side_1
    
  end 

  def kind 
   #binding.pry
       if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else 
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
    
    end 
  end 
    end 

   #@side_1.is_a? Integer 
  class TriangleError < StandardError
    # triangle error code
  end
end

  class TriangleError < StandardError
    # triangle error code
  end
