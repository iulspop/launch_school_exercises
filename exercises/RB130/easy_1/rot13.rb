=begin
input: string of names on each line
output: string of names unencrypted

req:
- a
- z
- A
- Z

model:
map all letter characters using ROT 13 cipher

rot 13 cipher
a..z
ord + 13, modulo 123
if < 97, + 97
A..Z
ord + 13, modulo 91
if < 65, + 65

algo
match and replace
=end

def rotate_letter_13(char, min_ord: 97, max_ord: 122)
  ord = char.ord + 13
  if ord > max_ord
    positions_over_max = ord % max_ord
    positions_over_min = positions_over_max - 1
    ord = min_ord + positions_over_min
  end
  ord.chr
end

def rot13(string)
  string
  .gsub(/[a-z]/) { |char| rotate_letter_13(char) }
  .gsub(/[A-Z]/) { |char| rotate_letter_13(char, min_ord: 65, max_ord: 90) }
end

pioneers = <<-DOC
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
DOC

puts rot13(pioneers)

    # string.gsub(/[a-zA-Z]/) { |char| rotate_letter(char, positions) }

  # def self.rotate_letter(letter, positions)
  #   if letter.upcase == letter
  #     min_ord = 65
  #     max_ord = 90
  #   end
  #   if letter.downcase == letter
  #     min_ord = 97
  #     max_ord = 122
  #   end

  #   rotate_ordinal(letter.ord, positions, min_ord, max_ord).chr
  # end

  # def self.rotate_ordinal(ord, positions, min_ord, max_ord)
  #   ord += positions
  #   if ord > max_ord
  #     positions_over_max = ord % max_ord
  #     positions_over_min = positions_over_max - 1
  #     ord = min_ord + positions_over_min
  #   end
  #   ord
  # end

  # private_class_method :rotate_letter, :rotate_ordinal

  # class Cipher
  #   def self.rotate(string, positions)
  #     string
  #       .gsub(/[a-z]/) { |char| rotate_letter(char, positions) }
  #       .gsub(/[A-Z]/) do |char|
  #       rotate_letter(char, positions, min_ord: 65, max_ord: 90)
  #     end
  #   end
  
  #   def rotate_letter(char, positions, min_ord: 97, max_ord: 122)
  #     ord = char.ord + positions
  #     if ord > max_ord
  #       positions_over_max = ord % max_ord
  #       positions_over_min = positions_over_max - 1
  #       ord = min_ord + positions_over_min
  #     end
  #     ord.chr
  #   end
  
  #   private_class_method :rotate_letter
  # end