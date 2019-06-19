class Lawyer
  def method_missing(method, *args)
    puts "Called: #{method}(#{args.join(', ')})"
    puts "(Also a block given)" if block_given?
  end
end


bob = Lawyer.new
bob.talk_simple('a', 'b') do
  puts 'in a block'
end
