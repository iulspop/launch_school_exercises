=begin
input int
output bool

leap year is a year divisible by 4
year % 4 == 0 && (year % 100 != 0 && year % 400 == 0)

div4 && !div100 => true
div100 && div400 => true
=end

def leap_year?(year)
  div4   = year % 4 == 0
  div100 = year % 100 == 0
  div400 = year % 400 == 0
  (div4 && !div100) || div400
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true