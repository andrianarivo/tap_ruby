require_relative '../utils'

class NetworkLocation
  attr_accessor :rec_entity_code, :call_reference, :location_area, :cell_id
  def initialize(rec_entity_code, call_reference,location_area, cell_id)
    @rec_entity_code = rec_entity_code
    @call_reference = call_reference
    @location_area = location_area
    @cell_id = cell_id
  end

  def self.from_map(map)
    rec_entity_code = Utils.ascii_to_i(map[0][184])
    call_reference = Utils.ascii_to_i(map[1][45])
    location_area = Utils.ascii_to_i(map[2][136])
    cell_id = Utils.ascii_to_i(map[3][59])
    new(rec_entity_code, call_reference, location_area, cell_id)
  end
end