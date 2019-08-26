class MyClass; end

# First way
def MyClass.class_method1; end

# Second way
class MyClass
  def self.class_method2
  end
end

# Third way
class MyClass
  class << self
    def class_method3
    end
  end
end

pp MyClass.methods.grep(/^class_method/)
