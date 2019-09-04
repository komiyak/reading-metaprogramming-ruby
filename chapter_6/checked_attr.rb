class Person
  include CheckedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end

me = Person.new
me.age = 39 # is OK!
me.age = 12 # raises a exception!
