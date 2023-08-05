# frozen_string_literal: true

class GprsChargeableSubscriber
  attr_accessor :chargeable_subscriber, :pdp_address

  def initialize(chargeable_subscriber, pdp_address)
    @chargeable_subscriber = chargeable_subscriber
    @pdp_address = pdp_address
  end

  def self.from_map(map)
    chargeable_subscriber = []
    map[0][427].each do | element |
      sim_chargeable_subscriber = SimChargeableSubscriber.from_map(element[199])
      chargeable_subscriber.push(sim_chargeable_subscriber)
    end
    pdp_address = map[1][167]
    new(chargeable_subscriber, pdp_address)
  end
end
