setup do
  puts 'Set the height of the sky.'
  @sky_height = 100
end

setup do
  puts 'Set the height of the mountain.'
  @mountains_height = 100
end

event 'Fall the sky.' do
  @sky_height < 300
end

event 'Near the sky.' do
  @sky_height < @mountains_height
end

event 'Game over..' do
  @sky_height < 0
end
