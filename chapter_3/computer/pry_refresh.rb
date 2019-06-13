def refresh(options={})
  defaults[:memory_size] = Pry.memory_size
  self.memory_size = options[:memory_size] if options[:memory_size]
  defaults[:quiet] = Pry.quiet
  self.quiet = options[:quiet] if options[:quiet]
end

def refresh_with_dynamic_dispatch(options={})
  defaults = {}
  attributes = [
    :input,
    :output,
    :commands,
    :print,
    :quiet,
    :exception_handler,
    :hooks]

  attributes.each do |attribute|
    defaults[attribute] = Pry.send attribute
  end

  defaults.merge!(options).each do |key, value|
    send("#{key}=", value) if respond_to?("#{key}=")
  end
end
