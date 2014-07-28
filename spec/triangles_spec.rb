require 'rspec'
require 'triangle'

describe Triangle do
  it 'is initialized with 3 sides' do
    test_triangle = Triangle.new(3,3,5)
    test_triangle.should be_an_instance_of Triangle
  end

  it 'sorts the values and stores them in an array' do
    test_triangle = Triangle.new(3,10,5)
    test_triangle.sort.should eq [3,5,10]
  end

  it 'return false when not a triangle' do
    test_triangle = Triangle.new(3,5,10)
    test_triangle.type.should eq false
  end

  it 'when all sides are equal, returns equilateral' do
    test_triangle = Triangle.new(3,3,3)
    test_triangle.type.should eq ('Equilateral')
  end

  it 'return isosceles when exactly 2 sides are equal' do
    test_triangle = Triangle.new(3,3,5)
    test_triangle.type.should eq ("Isosceles")
  end

  it 'return scalene when no sides are equal' do
    test_triangle = Triangle.new(4,2,3)
    test_triangle.type.should eq ("Scalene")
  end
end
