# a Caesar cipher module that contains 3 methods with different solutions
# it takes a string and a shift factor and returns the modified string
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# def caesar_cipher(string, shift)
#    alphabet = Array("a".."z")
#    non_caps = alphabet.zip(alphabet.rotate(shift)).to_h
#    alphabet = Array("A".."Z")
#    caps = alphabet.zip(alphabet.rotate(shift)).to_h
#    encrypter = non_caps.merge(caps)
#    string.chars.map { |char| encrypter.fetch(char, char) }.join
#  end


# puts caesar_cipher("What a string!", 5)

# def caesar_cipher(string, shift)
#   input = string.split("")
#   encrypter = input.map do|character|
#     if character == "z"
#       ("a".ord + shift - 1).chr
#     elsif character == "Z"
#       ("A".ord + shift - 1).chr
#     elsif character.upcase != character.downcase
#       (character.ord + shift).chr
#     else
#       character
#     end
#   end
# p  encrypter.join("")
# end

# caesar_cipher("What a string!", 5)

def cipher(string, shift)
  # empty arrays to use in loops
  ordinal_arr = []
  cipher_ordinal_arr = []
  encrypter = []

  # convert string to downcase and array of strings
  input = string.downcase.chars

  # create array of string ordinals
  for i in input
    ordinal_arr.push(i.ord)
  end

  # first push i not equal to 'a' - 'z' to final product, no mutation
  # second wrap from a - z in case i - shift is a nominal below 'a'
  # last if wrap not needed, push i - shift
  for i in ordinal_arr
    if i < 97 || i > 122
      cipher_ordinal_arr.push(i)
    elsif i + shift > 122
      x = i + shift
      y = x - 122
      cipher_ordinal_arr.push(96 + y)
    else cipher_ordinal_arr.push(i + shift)
    end
  end

  for i in cipher_ordinal_arr
    encrypter.push(i.chr)
  end

  # p "Your string is: #{string}"
  p "Your encrypted message is: #{encrypter.join('')}"

end

cipher("What a string!", 5)
