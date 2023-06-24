require_relative '../utils'
require_relative 'currency_conversion'

class AccountingInfo
  attr_accessor :local_currency, :tap_currency, :currency_conversion_info, :tap_decimal_places

  def initialize(local_currency,tap_currency,currency_conversion_info,tap_decimal_places)
    @local_currency = local_currency
    @tap_currency = tap_currency
    @currency_conversion_info = currency_conversion_info
    @tap_decimal_places = tap_decimal_places
  end

  def self.from_map(map)
    local_currency = map[0][135]
    tap_currency = map[1][210]
    currency_conversion_info = []
    map[2][80].each do | element |
      currency_conversion = CurrencyConversion.from_map(element[106])
      currency_conversion_info.push(currency_conversion)
    end
    tap_decimal_places = Utils.ascii_to_i(map[3][244])
    new(local_currency, tap_currency, currency_conversion_info, tap_decimal_places)
  end
end