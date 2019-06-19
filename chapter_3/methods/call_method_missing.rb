
class Lawyer; end
nick = Lawyer.new
nick.send :method_missing, :my_method
