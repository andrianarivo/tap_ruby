
module Utils
  def self.hex_to_i(hex_code)
    hex_code.to_i(16)
  end
  
  def self.ascii_to_s(ascii_string)
    ascii_string.unpack('H*').first
  end

  def self.ascii_to_i(ascii_string)
    hex_to_i(ascii_to_s(ascii_string))
  end

end