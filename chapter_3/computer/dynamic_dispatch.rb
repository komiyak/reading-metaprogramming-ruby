class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  attributes = [:mouse, :cpu]

  attributes.each do |attr|
    define_method attr do
      info = @data_source.send "get_#{attr}_info", @id
      price = @data_source.send "get_#{attr}_price", @id
      result = "#{attr.capitalize}" if price >= 100
    end
  end
end
