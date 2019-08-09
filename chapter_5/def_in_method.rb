class C
  def m1
    pp self
    def m2
      pp self
    end
  end
end

class D < C; end

#obj = D.new
#obj.m1

p C.instance_methods(false)
