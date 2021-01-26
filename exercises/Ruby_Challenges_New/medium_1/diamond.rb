# https://launchschool.com/exercises/9fee1e86

=begin
input: string letter
output: return string

req:
 - capital letters only

- array 'A' to letter
  - size = number of letters

- max length
  1 + ((number of letters - 1) * 2)
  
- letter length
  step -2, 1
  9
  7
  5
  3
  1


algo:

- get array of letters
- get max length
- 1..max.select odd
- zip.to_h
-  |letter,size|
    print letter * size 
    centered to max length
  

=end
require "pry"
class Diamond
  def self.make_diamond(letter)
    letters_and_widths, add_line = setup(letter)

    diamond = letters_and_widths.each_with_object("", &add_line)

    remove_letters_in_the_middle(diamond)
  end

  def self.setup(letter)
    letters = ('A'..letter).to_a
    diamond_width = 1 + ((letters.size - 1) * 2)
    widths = (1..diamond_width).to_a.select(&:odd?)
    top_half = letters.zip(widths)
    bottom_half = top_half.reverse[1..-1]
    letters_and_widths = top_half.push(*bottom_half)

    add_line = Proc.new do |(letter, size), diamond|
      line = (letter * size).center(diamond_width, " ") + "\n"
      diamond << line
    end

    [letters_and_widths, add_line]
  end
  
  def self.remove_letters_in_the_middle(diamond)
    diamond.gsub(/(?<=[A-Z])(.)(?=[A-Z])/, ' ')
  end

  private_class_method :setup, :remove_letters_in_the_middle
end
