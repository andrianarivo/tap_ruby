require_relative '../utils'

class RecEntity
  attr_accessor :rec_entity_code

  def initialize(rec_entity_code)
    @rec_entity_code = rec_entity_code
  end

  def self.from_map(map)
    rec_entity_code = []
    map.each do |elem|
      rec_entity_code << Utils.ascii_to_i(elem[184])
    end
    new(rec_entity_code)
  end
end
