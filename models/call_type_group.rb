require_relative '../utils'

class CallTypeGroup
  attr_accessor :call_type_level_1, :call_type_level_2, :call_type_level_3
  def initialize(call_type_level_1, call_type_level_2, call_type_level_3)
    @call_type_level_1 = call_type_level_1
    @call_type_level_2 = call_type_level_2
    @call_type_level_3 = call_type_level_3
  end

  def self.from_map(map)
    call_type_level_1 = Utils.ascii_to_i(map[0][259])
    call_type_level_2 = Utils.ascii_to_i(map[1][255])
    call_type_level_3 = Utils.ascii_to_i(map[2][256])
    new(call_type_level_1, call_type_level_2, call_type_level_3)
  end
end