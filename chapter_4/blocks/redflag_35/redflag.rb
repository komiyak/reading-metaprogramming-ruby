class Evaluator
  def set_events(events)
    @events = events
  end

  def events
    @events || []
  end

  def set_setups(setups)
    @setups = setups
  end

  def setups
    @setups || []
  end

  def run
    @events.each do |event|
      @setups.each do |setup|
        setup.call
      end

      event[1].call(event[0])
    end
  end
end

evaluator = Evaluator.new

Kernel.send :define_method, :setup do |&block|
  setups = evaluator.setups
  setups << block
  evaluator.set_setups(setups)
end

Kernel.send :define_method, :event do |description, &block|
  events = evaluator.events
  events << [description, block]
  evaluator.set_events(events)
end

load 'events.rb'

evaluator.run
