class Book
  def title
    puts 'Called title'
  end

  def subtitle
    puts 'Called subtitle'
  end

  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      puts "Warning: #{old_method}() is deprecated. User #{new_method}()."
      send(new_method, *args, &block)
    end
  end

  deprecate :GetTitle, :title
  deprecate :title2, :subtitle
end

Book.new.title
Book.new.subtitle

# Depreacted calls
Book.new.GetTitle
Book.new.title2
