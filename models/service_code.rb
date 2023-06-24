class ServiceCode
  attr_accessor :tele_service_code
  def initialize(tele_service_code)
    @tele_service_code = tele_service_code
  end

  def self.from_map(map)
    tele_service_code = map[0][218]
  end
end