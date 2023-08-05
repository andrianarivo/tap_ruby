require_relative '../utils'

class Destination
  attr_accessor :called_number, :dialled_digits, :sms_destination_number
  def initialize(called_number, dialled_digits, sms_destination_number)
    @called_number = called_number
    @dialled_digits = dialled_digits
    @sms_destination_number = sms_destination_number
  end

  def self.from_map(map)
    called_number = Utils.ascii_to_s(map[0][407])
    dialled_digits = map[1][279]
    sms_destination_number = map[2][419]
    new(called_number, dialled_digits, sms_destination_number)
  end
end