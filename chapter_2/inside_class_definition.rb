
3.times do
    class C
        puts "Hello"
    end
end

class D
    def x; 'x'; end
end
class D
    def y; 'y'; end
end

puts D.new.x
puts D.new.y
