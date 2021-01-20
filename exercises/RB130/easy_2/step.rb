def step(from, to, step)
  until from >= to
    yield(from)
    from += step
  end
  nil
end

step(1, 10, 3) { |value| puts "value = #{value}" }