require './lib/triangle'

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
