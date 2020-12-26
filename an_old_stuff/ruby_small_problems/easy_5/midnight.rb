=begin
input: string, 'OO:OO'
output: minutes

split string ':' , to_i, hours, minutes

=end

def get_minutes(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours * 60 + minutes
end

get_minutes('12:34')

def before_midnight(time)
  minutes = get_minutes(time)
  minutes == 0 ? 0 : (60 * 24) - minutes
end

def after_midnight(time)
  get_minutes(time) % (60 * 24)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0