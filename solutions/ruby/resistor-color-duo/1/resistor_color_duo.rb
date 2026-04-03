=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
module ResistorColorDuo
  def self.value(color_duo = [])
    x = 0
    resistor = ""
    while x <= 1 do
      case color_duo[x]
      when "black"
        resistor += "0"
      when "brown"
        resistor += "1"
      when "red"
        resistor += "2"
      when "orange"
        resistor += "3"
      when "yellow"
        resistor += "4"
      when "green"
        resistor += "5"
      when "blue"
        resistor += "6"
      when "violet"
        resistor += "7"
      when "grey"
        resistor += "8"
      when "white"
        resistor += "9"
      end
      puts x
      x += 1
    end
    resistor.to_i
  end
end