require_relative 'gprs_network_location'

class GprsLocationInformation
  attr_accessor :gprs_network_location

  def initialize(gprs_network_location)
    @gprs_network_location = gprs_network_location
  end

  def self.from_map(map)
    gprs_network_location = GprsNetworkLocation.from_map(map[0][118])
    new(gprs_network_location)
  end
end
