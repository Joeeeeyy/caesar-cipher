def caesar_cipher(string, shift)
   alphabet = Array('a'..'z')
   non_caps = alphabet.zip(alphabet.rotate(shift)).to_h
   alphabet = Array('A'..'Z')
   caps = alphabet.zip(alphabet.rotate(shift)).to_h
   encrypter = non_caps.merge(caps)
   string.chars.map { |char| encrypter.fetch(char, char) }.join
 end


puts caesar_cipher("What a string!", 5)