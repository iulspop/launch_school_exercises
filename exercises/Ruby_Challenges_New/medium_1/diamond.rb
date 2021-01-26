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
class Diamond
  def self.make_diamond(letter)
    letters_and_widths, diamond_width = setup(letter)

    diamond = ''
    letters_and_widths.each do |(letter, width)|
      line = (letter * width).center(diamond_width, " ") + "\n"
      diamond << line
    end

    remove_letters_in_the_middle(diamond)
  end

  def self.setup(letter)
    letters = [*'A'..letter]

    # For every letter more than A, increase width by 2
    diamond_width = 1 + ((letters.size - 1) * 2)
    letter_widths = [*1..diamond_width].select(&:odd?)

    top_half = letters.zip(letter_widths)
    bottom_half = top_half.reverse[1..-1]
    letters_and_widths = top_half.push(*bottom_half)

    [letters_and_widths, diamond_width]
  end
  
  def self.remove_letters_in_the_middle(diamond)
    diamond.gsub(/(?<=[A-Z])(.)(?=[A-Z])/, ' ')
  end

  private_class_method :setup, :remove_letters_in_the_middle
end
