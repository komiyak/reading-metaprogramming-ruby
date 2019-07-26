@setup_blocks = []

def setup(&block)
  @setup_blocks << block
end

def event(description)
  @setup_blocks.each do |block|
    block.call
  end

  puts description if yield
end

load 'events.rb'
