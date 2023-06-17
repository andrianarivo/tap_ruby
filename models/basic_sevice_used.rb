class BasicSeviceUsed
  attr_accessor :basic_service, :charging_timestamp, :charge_information_list
  def initialize(basic_service, charging_timestamp, charge_information_list)
    @basic_service = basic_service
    @charging_timestamp = charging_timestamp
    @charge_information_list = charge_information_list
  end
end