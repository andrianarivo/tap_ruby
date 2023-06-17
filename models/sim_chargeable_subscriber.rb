class SimChargeableSubscriber
  attr_accessor :imsi, :msisdn
  def initialize(imsi, msisdn)
    @imsi = imsi
    @msisdn = msisdn
  end
end