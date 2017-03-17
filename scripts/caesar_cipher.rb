#!/usr/bin/env ruby

# Takes a string and returns a new string
# with each letter shifted by the offset

def caesar_cipher(string, offset = 0)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  encrypted_string = ""
  string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      index = alphabet.index(char.downcase)
      index += offset % 26
      index -= 26 if index > 25
      shifted_char = alphabet[index]
      shifted_char.upcase! if char.match(/[A-Z]/)
      encrypted_string << shifted_char
    else
      encrypted_string << char    
    end
  end
  return encrypted_string
end

if ARGV.empty?
  $stdout.puts "You didn't enter a string!"
else
  $stdout.puts caesar_cipher(ARGV[0], ARGV[1].to_i)
end
