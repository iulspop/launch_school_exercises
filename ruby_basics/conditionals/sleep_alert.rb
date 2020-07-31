status = ['awake', 'tired'].sample

duty = if status == 'awake' then "Be productive" else "Go to sleep!" end

puts duty