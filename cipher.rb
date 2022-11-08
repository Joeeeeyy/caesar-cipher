def cipher(string, shift)
   ordinal_arr = []
   cipher_ordinal_arr = []
   encrypt = []
   
   input = string.downcase.chars
 
   for i in input
     ordinal_arr.push(i.ord)
   end
 
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
     encrypt.push(i.chr)
   end
 
   # p "Your string is: #{string}"
   p "Your encrypted message is: #{encrypt.join('')}"
 
 end
 
 cipher("What a string!", 5)