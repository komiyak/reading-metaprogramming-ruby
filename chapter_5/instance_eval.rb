s1, s2 = 'abc', 'def'

p s1
p s2

s1.instance_eval do
  # Open the singleton class of the s1 object.
  def swoosh!
    reverse
  end
end

p s1.swoosh!
p s2.respond_to?(:swoosh!)
