ascii_string = "\x00"
hex_string = ascii_string.unpack('H*').first

puts hex_string