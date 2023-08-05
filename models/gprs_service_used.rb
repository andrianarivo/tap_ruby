# frozen_string_literal: true

class GprsServiceUsed
  attr_accessor :data_volume_incoming, :data_volume_outgoing, :charge_information_list

  def initialize(data_volume_incoming, data_volume_outgoing, charge_information_list)
    @data_volume_incoming = data_volume_incoming
    @data_volume_outgoing = data_volume_outgoing
    @charge_information_list = charge_information_list
  end

  def self.from_map(map)
    data_volume_incoming = Utils.ascii_to_i(map[0][250])
    data_volume_outgoing = Utils.ascii_to_i(map[1][251])
    charge_information_list = []
    map[2][70].each do | element |
      charge_information = ChargeInformation.from_map(element[69])
      charge_information_list.push(charge_information)
    end
    new(data_volume_incoming, data_volume_outgoing, charge_information_list)
  end
end
