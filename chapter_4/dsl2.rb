
def setup
  yield
end

def event
  yield
end

# ---

setup do
  p self
  @hoge = 100
end

event do
  p self
  p @hoge
end
