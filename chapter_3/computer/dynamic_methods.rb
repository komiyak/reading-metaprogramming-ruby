class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  define_component :mouse
  define_component :cpu

  class << self
    def define_component(name)
      define_method name do
        info = @data_source.send "get_#{name}_info", @id
        price = @data_source.send "get_#{name}_price", @id
        result = "#{name.capitalize}" if price >= 100
      end
    end
  end
end
