# RemoteConnection conn = new RemoteConnection("some")
#
# using (conn)
#   con.ReadData();
#   DoMoreStuff()
#
# => conn.Dispose()

def with(conn)
  yield
  conn.dispose()
end

# A stub class.
class RemoteConnection
  def initialize(setting)
    @setting = setting
  end

  def read_data
    puts "Called read_data with '#{@setting}'."
  end

  def dispose
    puts 'Called dispose'
  end
end


conn = RemoteConnection.new("some")

with(conn) do
  conn.read_data
end
