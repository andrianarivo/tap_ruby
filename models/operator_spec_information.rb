class OperatorSpecInformation
  attr_accessor :operator_spec_information
  def initialize(operator_spec_information)
    @operator_spec_information = operator_spec_information
  end

  def self.from_map(map)
    operator_spec_information = map[0][163]
  end
end