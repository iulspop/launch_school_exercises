require 'date'

def friday_13th(year)
  days = (1..12).map { |month| DateTime.new(year, month, 13) }
  days.count { |day| day.friday? }
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2