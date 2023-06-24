require_relative 'time_offset'
require_relative 'rec_entity_information'

class NetworkInfo
  attr_accessor :utc_time_offset_info, :rec_entity_info

  def initialize(utc_time_offset_info,rec_entity_info)
    @utc_time_offset_info = utc_time_offset_info
    @rec_entity_info = rec_entity_info
  end

  def self.from_map(map)
    utc_time_offset_info = [] 
    map[0][234].each do | element |
      utc_time_offset = TimeOffset.from_map(element[233])
      utc_time_offset_info.push(utc_time_offset)
    end
    rec_entity_info = []
    map[1][188].each do | element |
      rec_entity = RecEntityInformation.from_map(element[183])
      rec_entity_info.push(rec_entity)
    end
    new(utc_time_offset_info, rec_entity_info)
  end
end