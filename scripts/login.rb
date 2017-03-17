require 'io/console'
require 'digest'

USERNAME = 'skyler'
PASSWORD = "b493d48364afe44d11c0165cf470a4164d1e2609911ef998be868d46ade3de4e" # banana

loop do
  print "Enter your username: "
  username = gets.chomp
  print "Enter your password: "
  password = STDIN.noecho(&:gets).chomp # Conceals the password as you type it
  puts

  password = Digest::SHA256.hexdigest(password)
  authorized = (username == USERNAME) && (password == PASSWORD)

  if authorized
    puts "Welcome!"
    break
  end

  puts "Authorization failed!"
end
