class MobileCall
  attr_accessor :basic_call_information, :location_information, :equipment_identifier, :basic_service_used_list, :operator_spec_information
  def initialize(basic_call_information, location_information, equipment_identifier, basic_service_used_list, operator_spec_information)
    @basic_call_information = basic_call_information
    @location_information = location_information
    @equipment_identifier = equipment_identifier
    @basic_service_used_list = basic_service_used_list
    @operator_spec_information = operator_spec_information
  end
end