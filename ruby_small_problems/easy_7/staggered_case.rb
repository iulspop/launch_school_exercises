def staggered_case(string)
  string = string.dup
  alt = true
  string.chars.map do |char|
    if alt && char.match?(/[a-z]/i)
      alt = !alt
      char.upcase
    elsif char.match? /[a-z]/i
      alt = !alt
      char.downcase
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'