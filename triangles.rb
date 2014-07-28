require './lib/triangle'

@triangles = []
def main_menu
  loop do
    puts "Input each side of your triangle and press 's' to start."
    puts "If you need to start over, press 'x'\n"
    user_input = gets.chomp
    if user_input == "s"
      take_dimensions
    elsif user_input == "x"
      main_menu
    else
      puts "Sorry, that doesn't compute. Press 'x' to start over or enter to continue"
    end
  end
end

def take_dimensions
  puts "Input the triangle length: "
  side1 = gets.chomp.to_i

  puts "Input the triangle width: "
  side2 = gets.chomp.to_i

  puts "Input the triangle height: "
  side3 = gets.chomp.to_i

  newTriangle = Triangle.new(side1, side2, side3)

  @triangles << newTriangle

  name_triangle
end

def name_triangle
  puts "Your triangle is: #{@triangles[0].type}"
end

main_menu
