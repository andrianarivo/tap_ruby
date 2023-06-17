require 'openssl'

def decode_asn1_der(file_path)
  # Read the contents of the DER file
  der = File.read(file_path)
  OpenSSL::ASN1.traverse(der) do | depth, offset, header_len, length, constructed, tag_class, tag|
    puts "Depth: #{depth} Offset: #{offset} Length: #{length}"
    puts "Header length: #{header_len} Tag: #{tag} Tag class: #{tag_class} Constructed: #{constructed}"
  end
end

# Provide the path to your ASN.1 DER file
file_path = './CDFRAF1MDGTM42711'

# Call the decode_asn1_der method with the file path
decode_asn1_der(file_path)
