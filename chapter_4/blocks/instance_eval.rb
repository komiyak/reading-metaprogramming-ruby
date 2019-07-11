class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_eval do
  p self
  p @v
end

obj.instance_eval { @v = 2 }
obj.instance_eval { p @v }
