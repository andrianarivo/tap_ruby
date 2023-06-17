class TimeOffset
  attr_accessor :utc_time_offset_code, :utc_time_offset

  def initialize(utc_time_offset_code, utc_time_offset)
    @utc_time_offset_code = utc_time_offset_code
    @utc_time_offset = utc_time_offset
  end
end