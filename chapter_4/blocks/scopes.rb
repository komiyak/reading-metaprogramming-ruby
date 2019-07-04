v1 = 1
class MyClass
  v2 = 2

  p v1 # <= Undefined local variable because can not across a variable to a scope in the scope gate.

  p local_variables

  def my_method
    v3 = 3
    p local_variables
  end

  p local_variables
end

obj = MyClass.new
obj.my_method
obj.my_method
p local_variables
