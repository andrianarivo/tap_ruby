class NetworkInfo
  attr_accessor :utc_time_offset_info, :rec_entity_info

  def initialize(utc_time_offset_info,rec_entity_info)
    @utc_time_offset_info = utc_time_offset_info
    @rec_entity_info = rec_entity_info
  end
end