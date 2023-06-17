class NetworkLocation
  attr_accessor :rec_entity_code, :call_reference, :location_area, :cell_id
  def initialize(rec_entity_code, call_reference,location_area, cell_id)
    @rec_entity_code = rec_entity_code
    @call_reference = call_reference
    @location_area = location_area
    @cell_id = cell_id
  end
end