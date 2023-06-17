class BasicCallInformation
  attr_accessor :chargeable_subscriber,:destination, :call_originator, :call_event_start_timestamp, :total_call_event_duration, 
  def initialize(chargeable_subscriber, destination, call_originator,call_event_start_timestamp, total_call_event_duration)
    @chargeable_subscriber = chargeable_subscriber
    @destination = destination
    @call_originator = call_originator
    @call_event_start_timestamp = call_event_start_timestamp
    @total_call_event_duration = total_call_event_duration
  end
end