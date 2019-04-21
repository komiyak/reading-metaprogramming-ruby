class Greeting
    def initialize(text)
        @text = text
    end

    def welcome
        @text
    end
end

obj = Greeting.new('Hello')

puts obj.class
pp obj.class.instance_methods(false)
pp obj.instance_variables
