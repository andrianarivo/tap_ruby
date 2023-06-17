require 'openssl'
require 'pp'

def decode_asn1_der(file_path)
  # Read the contents of the DER file
  der_data = File.read(file_path)

  # Create an OpenSSL ASN1::DER object from the DER data
  asn1 = OpenSSL::ASN1.decode(der_data)

  # Print the decoded ASN.1 structure
  pp asn1
end

# Provide the path to your ASN.1 DER file
file_path = './CDFRAF1MDGTM42711'

# Call the decode_asn1_der method with the file path
decode_asn1_der(file_path)
