def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
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
puts caesar_cipher("Hello, World!", 3)  # "Khoor, Zruog!"