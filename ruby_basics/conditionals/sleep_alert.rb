status = ['awake', 'tired'].sample

alert = if status == 'awake' then "Be productive" else "Go to sleep!" end

puts alert