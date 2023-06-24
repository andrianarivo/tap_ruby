require_relative '../utils'
require_relative 'charge_detail'
require_relative 'call_type_group'

class ChargeInformation
  attr_accessor :charged_item, :exchange_rate_code, :charge_detail_list, :call_type_group
  def initialize(charged_item, exchange_rate_code, charge_detail_list, call_type_group = nil)
    @charged_item = charged_item
    @exchange_rate_code = exchange_rate_code
    @charge_detail_list = charge_detail_list
    @call_type_group = call_type_group
  end

  def self.from_map(map)
    charged_item = map[0][66]
    exchange_rate_code = Utils.ascii_to_i(map[1][105])
    charge_detail_list = []
    if map[2][64] != nil
      map[2][64].each do | element |
        charge_detail = ChargeDetail.from_map(element[63])
        charge_detail_list.push(charge_detail)
      end
    end
    call_type_group = nil
    if map[2][258] != nil
      call_type_group = CallTypeGroup.from_map(map[2][258])
      map[3][64].each do | element |
        charge_detail = ChargeDetail.from_map(element[63])
        charge_detail_list.push(charge_detail)
      end
    end
    new(charged_item, exchange_rate_code, charge_detail_list, call_type_group)
  end
end