loop do
  puts "How many output lines do you want?"
  print "Enter a number greater than or equal to 3 (Q to quit): "
  input = gets.chomp
  break if input =~ /^[Qq]([Uu][Ii][Tt])?$/
  lines = input.to_i
  if lines >= 3
    puts
    lines.times { puts "Launch School is the best!" }
    puts
  else
    puts "Invalid input."
  end
end
