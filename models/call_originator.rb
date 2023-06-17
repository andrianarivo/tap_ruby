class CallOriginator
  attr_accessor :calling_number, :sms_originator
  def initialize(calling_number, sms_originator)
    @calling_number = calling_number
    @sms_originator = sms_originator
  end
end