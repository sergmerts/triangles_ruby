class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def side1
    @side1
  end

  def side2
    @side2
  end

  def side3
    @side3
  end

  def sort
    @sides = [side1,side2,side3].sort
  end

  def type
    if side1 + side2 <= side3
        false
    end
  end
end

triangle = Triangle.new(5,10,3)
puts triangle.type


