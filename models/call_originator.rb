require_relative '../utils'

class CallOriginator
  attr_accessor :calling_number, :sms_originator
  def initialize(calling_number, sms_originator = nil)
    @calling_number = calling_number
    @sms_originator = sms_originator
  end

  def self.from_map(map)
    if map[0][405] != nil
      calling_number = Utils.ascii_to_s(map[0][405])
    end
    if map[0][425] != nil
      sms_originator = Utils.ascii_to_s(map[0][425])
    end
    new(calling_number, sms_originator)
  end
end