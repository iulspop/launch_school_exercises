require 'minitest/autorun'
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
    letters_and_sizes, max_size = setup(letter)

    diamond = ""
    add_line = Proc.new do |(letter, size)|
      line = (letter * size).center(max_size, " ") + "\n"
      diamond += line
    end
  
    letters_and_sizes.each(&add_line)
    letters_and_sizes.reverse[1..-1].each(&add_line)

    remove_letters_in_the_middle(diamond)
  end

  def self.setup(letter)
    letters = ('A'..letter).to_a
    number_of_letters = letters.size
    max_size = 1 + ((number_of_letters - 1) * 2)
    sizes = (1..max_size).to_a.select(&:odd?)
    letters_and_sizes = letters.zip(sizes)
    [letters_and_sizes, max_size]
  end
  
  def self.remove_letters_in_the_middle(diamond)
    diamond.gsub(/(?<=[ \n][A-Z])(.+)(?=[A-Z][ \n])/) do |match|
      " " * match.size
    end
  end

  private_class_method :setup, :remove_letters_in_the_middle
end
