class C
  def a_method
    'C#a_method'
  end
end

class D < C; end

obj = D.new
p obj.a_method

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

#p obj.a_singleton_method

p obj.singleton_class
p obj.singleton_class.superclass
