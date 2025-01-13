def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a # turns the alphabet to an array
  ciphered_text = ""

  string.each_char do |char|
    if alphabet.include?(char.downcase)
      shifted_index = (alphabet.index(char.downcase) + shift) % 26
      new_char = alphabet[shifted_index]
      new_char.upcase! if char == char.upcase
      ciphered_text << new_char
    else
      ciphered_text << char
    end
  end

  ciphered_text
end

# Example usage:
puts "Example: 'Hello, world!' >> 'Khoor, Zruog!'"
puts "In put your message:"
new_message = gets.chomp
puts caesar_cipher(new_message, 3) 

# there is a bug in how repeated char first in caps is displayed in caps for non-cap similar char