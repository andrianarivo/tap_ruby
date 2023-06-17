class ChargeInformation
  attr_accessor :charged_item, :exchange_rate_code, :charge_detail_list
  def initialize(charged_item, exchange_rate_code, charge_detail_list)
    @charged_item = charged_item
    @exchange_rate_code = exchange_rate_code
    @charge_detail_list = charge_detail_list
  end
end