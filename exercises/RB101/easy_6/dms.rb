=begin
input: float
ouput: string formated angle


=end

def dms(decimal_degree)
  decimal_degree %= 360
  degree  = decimal_degree.to_i
  minutes = ((decimal_degree - degree) * 60.0).to_i
  seconds = ((decimal_degree - degree - minutes / 60.0) * 3600).to_i
  format(%(%01d°%02d'%02d"), degree, minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")