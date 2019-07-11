class CleanRoom
  def current_temperature
    puts "current temperature"
    return 3
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if current_temperature < 20
    puts "Ware the jucket."
  end
end
