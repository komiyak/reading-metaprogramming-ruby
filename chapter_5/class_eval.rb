def add_method_to(a_class)
  a_class.class_eval do
    pp self

    def m
      'Hello'
    end
  end
end

add_method_to String
pp 'abc'.m
