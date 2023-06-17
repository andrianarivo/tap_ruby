class AccountingInfo
  attr_accessor :local_currency, :tap_currency, :currency_conversion_info, :tap_decimal_places

  def initialize(local_currency,tap_currency,currency_conversion_info,tap_decimal_places)
    @local_currency = local_currency
    @tap_currency = tap_currency
    @currency_conversion_info = currency_conversion_info
    @tap_decimal_places = tap_decimal_places
  end
end