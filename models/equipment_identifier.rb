require_relative '../utils'

class EquipmentIdentifier
  attr_accessor :imei
  def initialize(imei)
    @imei = imei
  end

  def self.from_map(map)
    imei = Utils.ascii_to_s(map[0][128])
    new(imei)
  end
end