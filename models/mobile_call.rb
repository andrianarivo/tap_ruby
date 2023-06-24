require_relative 'basic_call_information'
require_relative 'location_information'
require_relative 'equipment_identifier'
require_relative 'basic_service_used'
require_relative 'operator_spec_information'

class MobileCall
  attr_accessor :basic_call_information, :location_information, :equipment_identifier, :basic_service_used_list, :operator_spec_information
  def initialize(basic_call_information, location_information, equipment_identifier, basic_service_used_list, operator_spec_information)
    @basic_call_information = basic_call_information
    @location_information = location_information
    @equipment_identifier = equipment_identifier
    @basic_service_used_list = basic_service_used_list
    @operator_spec_information = operator_spec_information
  end

  def self.from_map(map)
    basic_call_information = nil
    if map[0][153] != nil
      basic_call_information = BasicCallInformation.from_map(map[0][153])
    end
    if map[0][147] != nil
      basic_call_information = BasicCallInformation.from_map(map[0][147])
    end
    location_information = LocationInformation.from_map(map[1][138])
    equipment_identifier = EquipmentIdentifier.from_map(map[2][429])
    basic_service_used_list = []
    map[3][38].each do | element |
      basic_service_used = BasicServiceUsed.from_map(element[39])
      basic_service_used_list.push(basic_service_used)
    end
    operator_spec_information = OperatorSpecInformation.from_map(map[4][162])
    new(basic_call_information, location_information, equipment_identifier, basic_service_used_list, operator_spec_information)
  end
end