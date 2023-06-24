require_relative 'service_code'

class BasicService
  attr_accessor :service_code
  def initialize(service_code)
    @service_code = service_code
  end

  def self.from_map(map)
    service_code = ServiceCode.from_map(map[0][426])
    new(service_code)
  end
end