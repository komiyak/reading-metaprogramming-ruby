def a_method(a, b)
  a + yield(a, b)
end

result = a_method(1, 2) { |x, y| (x + y) * 3 }
puts result
