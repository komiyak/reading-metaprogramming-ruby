class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source

    # Using the introspection of the data_source object.
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

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
