def my_method
  yield
end

val = 100

my_method do 
  puts "in my method"
  puts val # <= Get the value in a closure
end

