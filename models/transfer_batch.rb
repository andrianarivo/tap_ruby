require_relative 'batch_control_info'
require_relative 'accounting_info'
require_relative 'network_info'
require_relative 'mobile_terminated_call'
require_relative 'mobile_originated_call'
require_relative 'gprs_call'
require_relative 'audit_control_info'

class TransferBatch
  attr_accessor :batch_control_info, :accounting_info, :network_info, :call_event_details, :audit_control_info

  def initialize(batch_control_info, accounting_info, network_info, call_event_details, audit_control_info)
    @batch_control_info = batch_control_info
    @accounting_info = accounting_info
    @network_info = network_info
    @call_event_details = call_event_details
    @audit_control_info = audit_control_info
  end

  def self.from_map(map)
    batch_control_info = BatchControlInfo.from_map(map[0][4])
    accounting_info = AccountingInfo.from_map(map[1][5])
    network_info = NetworkInfo.from_map(map[2][6])
    call_event_details = []
    map[3][3].each do | element |
      call_event_detail = nil
      if element[10] != nil
        call_event_detail = MobileTerminatedCall.from_map(element[10])
      end
      if element[9] != nil
        call_event_detail = MobileOriginatedCall.from_map(element[9])
      end
      if element[14] != nil
        call_event_detail = GprsCall.from_map(element[14])
      end
      call_event_details.push(call_event_detail)
    end
    audit_control_info = AuditControlInfo.from_map(map[4][15])
    new(batch_control_info, accounting_info, network_info, call_event_details, audit_control_info)
  end
end