class DS
  def initialize
  end

  def get_cpu_info(workstation_id); return '2.9 Ghz quad-core'; end
  def get_cpu_price(workstation_id); return 120; end
  def get_mouse_info(workstation_id); return 'Wireless Touch'; end
  def get_mouse_price(workstation_id); return 60; end
end

#ds = DS.new
#p ds.get_cpu_info(42)
#p ds.get_cpu_price(42)
