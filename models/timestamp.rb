class Timestamp
  attr_accessor :local_timestamp, :utc_time_offset

  def initialize(local_timestamp, utc_time_offset)
    @local_timestamp = local_timestamp
    @utc_time_offset = utc_time_offset
  end
end