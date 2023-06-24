require_relative 'basic_service'
require_relative 'timestamp_offset'
require_relative 'charge_information'

class BasicServiceUsed
  attr_accessor :basic_service, :charging_timestamp, :charge_information_list
  def initialize(basic_service, charging_timestamp, charge_information_list)
    @basic_service = basic_service
    @charging_timestamp = charging_timestamp
    @charge_information_list = charge_information_list
  end

  def self.from_map(map)
    basic_service = BasicService.from_map(map[0][36])
    charging_timestamp = TimestampOffset.from_map(map[1][74])
    charge_information_list = []
    map[2][70].each do | element |
      charge_information = ChargeInformation.from_map(element[69])
      charge_information_list.push(charge_information)
    end
    new(basic_service, charging_timestamp, charge_information_list)
  end
end