class Minilang
  def initialize(program)
    @program  = program
    @stack    = []
    @register = 0
  end

  def eval
    program.split.each do |token|
      if stack.empty? && %w[ADD SUB MULT DIV MOD POP].include?(token)
        throw 'Empty Stack!'
      end
      case token
      when 'PUSH'  then stack.push register
      when 'ADD'   then self.register += stack.pop
      when 'SUB'   then self.register -= stack.pop
      when 'MULT'  then self.register *= stack.pop
      when 'DIV'   then self.register /= stack.pop
      when 'MOD'   then self.register %= stack.pop
      when 'POP'   then self.register =  stack.pop
      when 'PRINT' then puts register
      else
        if token == token.to_i.to_s then self.register = token.to_i
        else throw "Invalid token: #{token}" end
      end
    end
  end

  private

  attr_reader :program, :stack, :register

  attr_writer :register
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)