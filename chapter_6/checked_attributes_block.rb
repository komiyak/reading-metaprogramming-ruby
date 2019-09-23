require 'test/unit'

class Person; end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age) {|v| v >= 18}
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end

def add_checked_attribute(klass, attribute, &validation)
  klass.class_eval do
    define_method("#{attribute.to_s}=") do |x|
      raise unless x
      raise unless validation.call(x)
      #eval("@#{attribute} = x")
      instance_variable_set("@#{attribute}", x)
    end

    define_method("#{attribute.to_s}") do
      #eval("@#{attribute}")
      instance_variable_get("@#{attribute}")
    end
  end
end
