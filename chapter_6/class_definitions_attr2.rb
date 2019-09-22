class MyClass
  def foo=(n)
    @foo = n
  end

  def foo
    @foo
  end
end

obj = MyClass.new
obj.foo = 10
p obj.foo
