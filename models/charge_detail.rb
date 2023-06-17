class ChargeDetail
  attr_accessor :charge_type, :charge, :charged_units, :charge_detail_timestamp
  def initialize(charge_type, charge, charged_units, charge_detail_timestamp)
    @charge_type = charge_type
    @charge = charge
    @charged_units = charged_units
    @charge_detail_timestamp = charge_detail_timestamp
  end
end