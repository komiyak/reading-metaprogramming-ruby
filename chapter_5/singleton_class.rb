obj = Object.new

singleton_class = class << obj
  self
end

pp singleton_class
pp singleton_class.class

# Or

pp obj.singleton_class
