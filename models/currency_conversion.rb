class CurrencyConversion
  attr_accessor :exchange_rate_code, :number_of_decimal_places, :exchange_rate
  
  def initialize(exchange_rate_code,number_of_decimal_places,exchange_rate)
    @exchange_rate_code = exchange_rate_code
    @number_of_decimal_places = number_of_decimal_places
    @exchange_rate = exchange_rate
  end
end