require_relative '../utils'

class TimestampOffset
  attr_accessor :local_timestamp, :utc_time_offset_code

  def initialize(local_timestamp, utc_time_offset_code)
    @local_timestamp = local_timestamp
    @utc_time_offset_code = utc_time_offset_code
  end

  def self.from_map(map) 
    local_timestamp = map[0][16]
    utc_time_offset_code = Utils.ascii_to_i(map[1][232])
    new(local_timestamp, utc_time_offset_code)
  end
end