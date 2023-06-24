class Timestamp
  attr_accessor :local_timestamp, :utc_time_offset

  def initialize(local_timestamp, utc_time_offset)
    @local_timestamp = local_timestamp
    @utc_time_offset = utc_time_offset
  end

  def self.from_map(map) 
    local_timestamp = map[0][16]
    utc_time_offset = map[1][231]
    new(local_timestamp, utc_time_offset)
  end
end