# What does this code print and why?
5.step(to: 10, by: 5) { |value| puts value }

# 5 and 8, because the step method starts at the number it was called on and ends when next step is greater than first argument.