p 31.to_s(2)

input = '0110'
p input.match?(/\A1[01]*\z/)


def determine_commands(binary)
  commands = []
  if binary.match?(/1\z/)        then commands << 'wink'            end
  if binary.match?(/1[10]{1}\z/) then commands << 'double blink'    end
  if binary.match?(/1[10]{2}\z/) then commands << 'close your eyes' end
  if binary.match?(/1[10]{3}\z/) then commands << 'jump'            end
  if binary.match?(/1[10]{4}\z/) then commands.reverse!             end
  commands
end

p determine_commands('11')