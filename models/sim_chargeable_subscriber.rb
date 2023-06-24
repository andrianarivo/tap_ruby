require_relative '../utils'

class SimChargeableSubscriber
  attr_accessor :imsi, :msisdn
  def initialize(imsi, msisdn)
    @imsi = imsi
    @msisdn = msisdn
  end

  def self.from_map(map)
    imsi = Utils.ascii_to_s(map[0][129])
    msisdn = Utils.ascii_to_s(map[1][152])
    new(imsi, msisdn)
  end
end