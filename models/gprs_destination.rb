# frozen_string_literal: true

class GprsDestination
  attr_accessor :access_point_name_ni

  def initialize(access_point_name_ni)
    @access_point_name_ni = access_point_name_ni
  end

  def self.from_map(map)
    access_point_name_ni = map[0][261]
    new(access_point_name_ni)
  end
end
