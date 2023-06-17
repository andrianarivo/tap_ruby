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
end