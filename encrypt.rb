require 'base64'
require 'openssl'
require 'digest'

puts "Do you want to say something without anyone to know it?\n"
to_cipher = gets.chomp
puts "Give me a key, so I can do my magic :D"
puts "Key: "
key = Digest::SHA256.digest gets.chomp

cipher = OpenSSL::Cipher::AES.new(128, :CBC)
cipher.encrypt
cipher.key = key

encrypted = cipher.update(to_cipher) + cipher.final

puts "You mean to say this:"
puts [encrypted].pack("u")
puts "Now you can get original message with decipher script in the same folder, he needs to know the encripted message and your password. Bye..."