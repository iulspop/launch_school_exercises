=begin
1 = wink
10 = double blink
100 = close your eyes
1000 = jump


10000 = Reverse the order of the operations in the secret handshake.

=end

class SecretHandshake
  attr_reader :commands

  def initialize(input)
    binary = to_binary(input)
    @commands = to_commands(binary)
  end

  private

  def to_commands(binary)
    commands = []
    if binary.match?(/1\z/)        then commands << 'wink'            end
    if binary.match?(/1[10]{1}\z/) then commands << 'double blink'    end
    if binary.match?(/1[10]{2}\z/) then commands << 'close your eyes' end
    if binary.match?(/1[10]{3}\z/) then commands << 'jump'            end
    if binary.match?(/1[10]{4}\z/) then commands.reverse!             end
    commands
  end

  def to_binary(input)
    binary = '0'
    binary = input         if input.is_a?(String) && input.match?(/\A1[01]*\z/)
    binary = input.to_s(2) if input.is_a?(Integer)
    binary
  end
end

handshake = SecretHandshake.new 9
handshake.commands # => ["wink","jump"]

handshake = SecretHandshake.new "11001"
handshake.commands # => ["jump","wink"]