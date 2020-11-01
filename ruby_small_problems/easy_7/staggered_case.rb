def staggered_case(string)
  string = string.dup
  alt = true
  string.chars.map do |char|
    if alt
      alt = !alt
      char.upcase
    else
      alt = !alt
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'