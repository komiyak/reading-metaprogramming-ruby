def monthly_sales_mock
  110
end

shared_value = 100

event 'High monthly sales' do
  monthly_sales_mock > shared_value
end

event 'Low monthly sales' do
  monthly_sales_mock < shared_value
end
