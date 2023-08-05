require_relative 'gprs_chargeable_subscriber'
require_relative 'time_offset'
require_relative 'gprs_destination'
require_relative '../utils'

class GprsBasicCallInformation
  attr_accessor :gprs_chargeable_subscriber, :gprs_destination, :call_event_start_timestamp, :total_call_event_duration, :charging_id

  def initialize(gprs_chargeable_subscriber, gprs_destination, call_event_start_timestamp, total_call_event_duration, charging_id)
    @gprs_chargeable_subscriber = gprs_chargeable_subscriber
    @gprs_destination = gprs_destination
    @call_event_start_timestamp = call_event_start_timestamp
    @total_call_event_duration = total_call_event_duration
    @charging_id = charging_id
  end

  def self.from_map(map)
    gprs_chargeable_subscriber = GprsChargeableSubscriber.from_map(map[0][115])
    gprs_destination = GprsDestination.from_map(map[1][116])
    call_event_start_timestamp = TimestampOffset.from_map(map[2][44])
    total_call_event_duration = Utils.ascii_to_i(map[3][223])
    charging_id = Utils.ascii_to_i(map[4][72])
    new(gprs_chargeable_subscriber, gprs_destination, call_event_start_timestamp, total_call_event_duration, charging_id)
  end
end
