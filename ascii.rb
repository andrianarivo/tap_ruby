ascii_string = "\x19uNa"
hex_string = ascii_string.unpack('H*').first

puts hex_string