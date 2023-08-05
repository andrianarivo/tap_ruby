require_relative 'gprs_basic_call_information'
require_relative 'gprs_location_information'
require_relative 'gprs_service_used'

class GprsCall
  attr_accessor :gprs_basic_call_information, :gprs_location_information, :gprs_service_used

  def initialize(gprs_basic_call_information, gprs_location_information, gprs_service_used)
    @gprs_basic_call_information = gprs_basic_call_information
    @gprs_location_information = gprs_location_information
    @gprs_service_used = gprs_service_used
  end

  def self.from_map(map)
    gprs_basic_call_information = GprsBasicCallInformation.from_map(map[0][114])
    gprs_location_information = GprsLocationInformation.from_map(map[1][117])
    gprs_service_used = GprsServiceUsed.from_map(map[2][121])
    new(gprs_basic_call_information, gprs_location_information, gprs_service_used)
  end
end
