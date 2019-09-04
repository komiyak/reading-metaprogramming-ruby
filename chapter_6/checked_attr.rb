module CheckedAttributes
  def attr_checked(age)
    puts 'call ' + age.to_s

    # and add a instance method to the subclass.
  end
end


class Person
  class << self
    include CheckedAttributes
  end

  attr_checked :age do |v|
    v >= 18
  end
end

me = Person.new
me.age = 39 # is OK!
me.age = 12 # raises a exception!
