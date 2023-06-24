require_relative 'timestamp'

class BatchControlInfo
  attr_accessor :sender, :recipient, :file_sequence_number, :file_creation_timestamp, :transfer_cutoff_timestamp, :file_available_timestamp, :specification_version_number, :release_version_number

  def initialize(sender, recipient, file_sequence_number, file_creation_timestamp, transfer_cutoff_timestamp, file_available_timestamp, specification_version_number, release_version_number)
    @sender = sender
    @recipient = recipient
    @file_sequence_number = file_sequence_number
    @file_creation_timestamp = file_creation_timestamp
    @transfer_cutoff_timestamp = transfer_cutoff_timestamp
    @file_available_timestamp = file_available_timestamp
    @specification_version_number = specification_version_number
    @release_version_number = release_version_number
  end

  def self.from_map(map)
    sender = map[0][196]
    recipient = map[1][182]
    file_sequence_number = map[2][109]
    file_creation_timestamp = Timestamp.from_map(map[3][108])
    transfer_cutoff_timestamp = Timestamp.from_map(map[4][227])
    file_available_timestamp = Timestamp.from_map(map[5][107])
    specification_version_number = map[6][201]
    release_version_number = map[7][189]
    new(sender, recipient, file_sequence_number, file_creation_timestamp, transfer_cutoff_timestamp, file_available_timestamp, specification_version_number, release_version_number)
  end
end