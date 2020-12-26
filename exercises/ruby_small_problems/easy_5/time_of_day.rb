require "date"

=begin
input: Integer, minutes
if negative is time before midnight
if positive is time after midnnight

output: String, time in 24 hour format
24:00

requirements:
  - must work with minutes values greater than 1440 (loops to next day)

algorithm:
given `total_minutes`
1. init `hours`, `minutes` to quotiant and modulus of `total_minutes` % 60
2. if `total_minutes` >= 0
   1. while `hours` > 24
      1. decrement `hours` by 24
3. else
   1. while `hours` < -24
      1. increment `hours` by 24
   2. reassign `hours` to `hours` + 24
4. return "`hours`:`minutes`" formated with zeros?

=end

# def time_of_day(total_minutes)
#   hours, minutes = total_minutes.divmod 60
#   while hours < -24 || hours > 24
#     hours.positive? ? hours -= 24 : hours += 24
#   end
#   hours += 24 if hours.negative?
#   format("%02d:%02d", hours, minutes)
# end

def time_of_day(delta_minutes)
  delta_seconds = delta_minutes * 6
  time = Time.new(2020, 10, 25) + delta_seconds
  time.strftime("%A %02k:%M")
end

p time_of_day(0)     #== "00:00"
p time_of_day(-3)    #== "23:57"
p time_of_day(35)    #== "00:35"
p time_of_day(-143137) #== "00:03"
p time_of_day(3000)  #== "02:00"
p time_of_day(800)   #== "13:20"
p time_of_day(-4231) #== "01:29"