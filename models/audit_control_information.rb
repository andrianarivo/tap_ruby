class AuditControlInformation
  attr_accessor :earliest_call_timestamp, :latest_call_timestamp, :total_charge, :total_tax_value, :total_discount_value, :call_event_details_count, :operator_spec_information
  def initialize(earliest_call_timestamp, latest_call_timestamp, total_charge, total_tax_value, total_discount_value, call_event_details_count, operator_spec_information)
    @earliest_call_timestamp = earliest_call_timestamp
    @latest_call_timestamp = latest_call_timestamp
    @total_charge = total_charge
    @total_tax_value = total_tax_value
    @total_discount_value = total_discount_value
    @call_event_details_count = call_event_details_count
    @operator_spec_information = operator_spec_information
  end
end