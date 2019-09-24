class String
  def self.inherited(subclass)
    puts "#{self} was inherited by the #{subclass}."
  end
end

class MyString < String; end
