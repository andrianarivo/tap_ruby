require 'openssl'
require 'pp'

def decode_asn1_der(file_path)
  # Read the contents of the DER file
  der_data = File.read(file_path)

  # Create an OpenSSL ASN1::DER object from the DER data
  asn1 = OpenSSL::ASN1.decode(der_data)

  # Traverse the ASN.1 structure and convert to JSON
  values = asn1_to_map(asn1)

  # Print the JSON representation
  pp values[1][3][3]
end

def asn1_to_map(asn1_data)
  if asn1_data.is_a?(OpenSSL::ASN1::ASN1Data)
    if asn1_data.value.is_a?(Array)
      elements = asn1_data.value.map { |element| asn1_to_map(element) }
      { asn1_data.tag => elements }
    else
      { asn1_data.tag => asn1_data.value }
    end
  else
    nil
  end
end

# Provide the path to your ASN.1 DER file
file_path = './CDFRAF1MDGTM42711'

# Call the decode_asn1_der method with the file path
decode_asn1_der(file_path)