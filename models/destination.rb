class Destination
  attr_accessor :called_number, :dialled_digits, :sms_destination_number
  def initialize(called_number, dialled_digits, sms_destination_number)
    @called_number = called_number
    @dialled_digits = dialled_digits
    @sms_destination_number = sms_destination_number
  end
end