
require 'monetize'

I18n.enforce_available_locales = false

# With a compsite type.
bargain_price = Monetize.from_numeric(99, 'USD')
puts bargain_price.format

# With a open class.
standard_price = 100.to_money('USD')
puts standard_price.format
