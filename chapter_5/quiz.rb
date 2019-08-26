module MyModule
  def my_method
  end
end

class MyClass
  include MyModule
  class << self
    include MyModule
  end
end

MyClass.my_method
#MyModule.my_method
