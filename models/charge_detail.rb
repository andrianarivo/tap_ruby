require_relative '../utils'

class ChargeDetail
  attr_accessor :charge_type, :charge, :charged_units, :charge_detail_timestamp, :chargeable_units
  def initialize(charge_type, charge, charged_units, charge_detail_timestamp = nil, chargeable_units = nil)
    @charge_type = charge_type
    @charge = charge
    @charged_units = charged_units
    @charge_detail_timestamp = charge_detail_timestamp
    @chargeable_units = chargeable_units
  end

  def self.from_map(map)
    charge_type = map[0][71]
    charge = Utils.ascii_to_i(map[1][62])
    if map[2][65] != nil
      chargeable_units = Utils.ascii_to_i(map[2][65])
      charged_units = Utils.ascii_to_i(map[3][68])
      return new(charge_type, charge, charged_units, nil, chargeable_units)
    else
      charged_units = Utils.ascii_to_i(map[2][68])
      charge_detail_timestamp = TimestampOffset.from_map(map[3][410])
      return new(charge_type, charge, charged_units, charge_detail_timestamp)
    end
  end
end