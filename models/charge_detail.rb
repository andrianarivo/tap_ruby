require_relative '../utils'

class ChargeDetail
  attr_accessor :charge_type, :charge, :charged_units, :charge_detail_timestamp
  def initialize(charge_type, charge, charged_units, charge_detail_timestamp)
    @charge_type = charge_type
    @charge = charge
    @charged_units = charged_units
    @charge_detail_timestamp = charge_detail_timestamp
  end

  def self.from_map(map)
    charge_type = map[0][71]
    charge = Utils.ascii_to_i(map[1][62])
    charged_units = Utils.ascii_to_i(map[2][68])
    charge_detail_timestamp = TimestampOffset.from_map(map[3][410])
    new(charge_type, charge, charged_units, charge_detail_timestamp)
  end
end