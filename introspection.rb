class Greeting
    def initialize(text)
        @text = text
    end

    def welcome
        @text
    end
end

obj = Greeting.new('Hello')
