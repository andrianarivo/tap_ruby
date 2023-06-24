class TimeOffset
  attr_accessor :utc_time_offset_code, :utc_time_offset

  def initialize(utc_time_offset_code, utc_time_offset)
    @utc_time_offset_code = utc_time_offset_code
    @utc_time_offset = utc_time_offset
  end

  def self.from_map(map) 
    utc_time_offset_code = Utils.ascii_to_i(map[0][232])
    utc_time_offset = map[1][231]
    new(utc_time_offset_code, utc_time_offset)
  end
end