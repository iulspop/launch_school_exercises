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

def rot13_char(char, min_ord, max_ord)
  ord = char.ord + 13
  ord = (ord % (max_ord + 1)) + min_ord if ord > max_ord
  ord.chr
end

def rot13(string)
  string
  .gsub(/[a-z]/) { |char| rot13_char(char, 97, 122) }
  .gsub(/[A-Z]/) { |char| rot13_char(char, 65, 90)  }
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