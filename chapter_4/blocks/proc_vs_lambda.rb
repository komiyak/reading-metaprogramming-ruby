# Use a return with lambda.
def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
p double(l)


# Use a return with Proc.
def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2
end

p another_double

# A but from a return using Proc.
my_proc = Proc.new { return 10 }
p double(my_proc)
