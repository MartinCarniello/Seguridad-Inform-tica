require 'base64'
require 'openssl'
require 'digest'

puts "Tell me your message\n"
to_decipher = gets.chomp.unpack("u")
puts "Give me the key you know ;)"
puts "Key: "
key = Digest::SHA256.digest gets.chomp

decipher = OpenSSL::Cipher::AES.new(128, :CBC)
decipher.decrypt
decipher.key = key

decrypted = decipher.update(to_decipher.first) + decipher.final

puts "This is what you want to hear:"
puts decrypted