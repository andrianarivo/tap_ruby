require_relative 'call_originator'
require_relative 'timestamp_offset'
require_relative 'sim_chargeable_subscriber'
require_relative 'destination'
require 'pp'

class BasicCallInformation
  attr_accessor :chargeable_subscriber,:destination, :call_originator, :call_event_start_timestamp, :total_call_event_duration
  def initialize(chargeable_subscriber, call_event_start_timestamp, total_call_event_duration, call_originator = nil, destination = nil)
    @chargeable_subscriber = chargeable_subscriber
    @destination = destination
    @call_originator = call_originator
    @call_event_start_timestamp = call_event_start_timestamp
    @total_call_event_duration = total_call_event_duration
  end
  
  def self.from_map(map)
    chargeable_subscriber = []
    map[0][427].each do | element |
      sim_chargeable_subscriber = SimChargeableSubscriber.from_map(element[199])
      chargeable_subscriber.push(sim_chargeable_subscriber)
    end
    call_originator = nil
    if map[1][41] != nil
      call_originator = CallOriginator.from_map(map[1][41])
    end
    destination = nil
    if map[1][89] != nil
      destination = Destination.from_map(map[1][89])
    end
    call_event_start_timestamp = TimestampOffset.from_map(map[2][44])
    total_call_event_duration = Utils.ascii_to_i(map[3][223])
    new(chargeable_subscriber, call_event_start_timestamp, total_call_event_duration, call_originator, destination)
  end
end