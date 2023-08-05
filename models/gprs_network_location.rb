require_relative 'rec_entity'

class GprsNetworkLocation
  attr_accessor :rec_entity

  def initialize(rec_entity)
    @rec_entity = rec_entity
  end

  def self.from_map(map)
    rec_entity = RecEntity.from_map(map[0][185])
    new(rec_entity)
  end
end
