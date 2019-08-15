class MyClass
  p self
  @my_var = 1
  p @my_var

  def foo
    p self
    p @my_var
  end

  def self.bar
    p self
  end
end

MyClass.bar
MyClass.new.foo
